#!/usr/bin/bash

GithubHosts() {
    sudo tee /etc/hosts <<-EOF
		127.0.0.1                   localhost
		::1                         localhost
		127.0.0.1                   archlinux.localdomain               archlinux

		#Github Hosts Start
		#Update Time: 2023-12-25
		#Project Address: https://githubfast.com/maxiaof/github-hosts
		#Update URL: https://gitlab.com/ineo6/hosts/-/raw/master/next-hosts
		185.199.109.154              github.githubassets.com
		140.82.112.21                central.github.com
		185.199.108.133              desktop.githubusercontent.com
		185.199.109.153              assets-cdn.github.com
		185.199.109.133              camo.githubusercontent.com
		185.199.111.133              github.map.fastly.net
		151.101.65.194              github.global.ssl.fastly.net
		140.82.112.3                 gist.github.com
		185.199.109.153              github.io
		140.82.113.3                 github.com
		140.82.112.5                 api.github.com
		185.199.111.133              raw.githubusercontent.com
		185.199.111.133              user-images.githubusercontent.com
		185.199.108.133              favicons.githubusercontent.com
		185.199.108.133              avatars5.githubusercontent.com
		185.199.108.133              avatars4.githubusercontent.com
		185.199.111.133              avatars3.githubusercontent.com
		185.199.108.133              avatars2.githubusercontent.com
		185.199.108.133              avatars1.githubusercontent.com
		185.199.111.133              avatars0.githubusercontent.com
		185.199.109.133              avatars.githubusercontent.com
		140.82.116.9                codeload.github.com
		3.5.11.192                 github-cloud.s3.amazonaws.com
		16.15.128.233                    github-com.s3.amazonaws.com
		3.5.25.24                github-production-release-asset-2e65be.s3.amazonaws.com
		52.216.213.73                github-production-user-asset-6210df.s3.amazonaws.com
		16.15.217.115                 github-production-repository-file-5c1aeb.s3.amazonaws.com
		185.199.111.153              githubstatus.com
		140.82.113.17                github.community
		185.199.110.133              media.githubusercontent.com
		185.199.111.133              objects.githubusercontent.com
		185.199.110.133              raw.github.com
		4.249.131.160                copilot-proxy.githubusercontent.com
	EOF
}

main() {
    GithubHosts
}

main
