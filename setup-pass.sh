#!/bin/bash

EMAIL="2353442022@qq.com"
PASS_ENTRY="email/qq"

# 检查 GPG 是否已有密钥
echo "[*] 检查是否已有 GPG 密钥..."
GPG_ID=$(gpg --list-secret-keys --keyid-format LONG | grep '^sec' | head -n1 | awk '{print $2}' | cut -d'/' -f2)

if [ -z "$GPG_ID" ]; then
    echo "[!] 未发现 GPG 密钥，正在创建..."

    # 创建一个新的密钥（使用默认选项，自动输入）
    cat > gen-key-script <<EOF
    %no-protection
    Key-Type: default
    Key-Length: 4096
    Subkey-Type: default
    Name-Real: QQ邮箱
    Name-Email: $EMAIL
    Expire-Date: 0
EOF

    gpg --batch --generate-key gen-key-script
    rm gen-key-script

    # 获取新密钥
    GPG_ID=$(gpg --list-secret-keys --keyid-format LONG | grep '^sec' | head -n1 | awk '{print $2}' | cut -d'/' -f2)
    echo "[✓] GPG 密钥已创建: $GPG_ID"
else
    echo "[✓] 已存在 GPG 密钥: $GPG_ID"
fi

# 初始化 pass
echo "[*] 初始化 pass 密码库..."
pass init "$GPG_ID"

# 添加授权码
echo "[*] 请输入你的 QQ 邮箱授权码（16 位）:"
read -s QQ_PASS

echo "$QQ_PASS" | pass insert -f "$PASS_ENTRY"

echo "[✓] QQ 邮箱授权码已加密保存于 pass ($PASS_ENTRY)"

