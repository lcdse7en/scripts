Edit_sddm() {
    # sudo pacman -S numlockx
    sudo tee /etc/sddm.conf.d/kde_settings.conf <<-EOF
		[Autologin]
		Relogin=false
		Session=
		User=

		[General]
		HaltCommand=/usr/bin/systemctl poweroff
		RebootCommand=/usr/bin/systemctl reboot
		Numlock=on

		[Theme]
		Current=Candy

		[Users]
		MaximumUid=60513
		MinimumUid=1000
	EOF
}

main() {
    sudo pacman -S numlockx
    Edit_sddm
}

main
