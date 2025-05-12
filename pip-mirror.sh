sudo rm /usr/lib/python3.13/EXTERNALLY-MANAGED

mkdir -p ~/.pip

sudo tee ~/.pip/pip.conf <<-EOF
		[global]
		index-url = https://pypi.tuna.tsinghua.edu.cn/simple

		[intall]
		trusted-host = https://pypi.tuna.tsinghua.edu.cn
		EOF
