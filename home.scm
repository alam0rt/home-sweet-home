(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services shells))

(home-environment
 (packages
  (map (compose list specification->package+output)
       (list "emacs-geiser-guile"
             "emacs-geiser"
             "pinentry-emacs"
             "emacs-exwm"
             "gnome-maps"
             "pipe-viewer"
             "emacs"
             "pavucontrol"
             "git"
             "xterm"
             "qemu"
             "openssh")))
 (services
  (list (service home-bash-service-type
                 (home-bash-configuration
                  (aliases
                   '(("grep" . "grep --color=auto")
                     ("ll" . "ls -l")
                     ("ls" . "ls -p --color=auto")
                     ("qemu" . "qemu-system-x86_64 -enable-kvm -m 512")
                     ("rm" . "rm --one-file-system"))))))))
