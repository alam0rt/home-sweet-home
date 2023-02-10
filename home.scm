(use-modules (gnu home)
	     (gnu home services)
             (gnu packages)
             (gnu services)
	     (ice-9 ftw)
	     (ice-9 regex)
             (guix gexp)
             (gnu home services shells))

(home-environment
 (packages
  (map (compose list specification->package+output)
       (list "emacs"
	     "emacs-geiser-guile"
	     "emacs-geiser"
	     "emacs-evil"
	     "neovim"
             "git"
             "xterm"
             "openssh")))
 (services
  (list
    (service home-xdg-configuration-files-service-type
	     `(("emacs/init.el" ,(local-file "files/emacs/init.el"))
	       ("emacs/000-config.el" ,(local-file "files/emacs/000-config.el"))
	       ("emacs/010-packages.el" ,(local-file "files/emacs/010-packages.el"))
	       ("emacs/020-matrix.el" ,(local-file "files/emacs/020-matrix.el"))))
    (service home-bash-service-type
                 (home-bash-configuration
                  (aliases
                   '(("grep" . "grep --color=auto")
                     ("ll" . "ls -l")
		     ("gst" . "git status")
		     ("vim" . "nvim")
                     ("ls" . "ls -p --color=auto")
                     ("rm" . "rm --one-file-system"))))))))
