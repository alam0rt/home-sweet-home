(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services shells))

(include "packages/emacs.scm")

(home-environment
 (packages
  (map (compose list specification->package+output)
       (list "samacs"
             "git"
             "xterm"
             "openssh")))
 (services
  (list (service home-bash-service-type
                 (home-bash-configuration
                  (aliases
                   '(("grep" . "grep --color=auto")
                     ("ll" . "ls -l")
                     ("ls" . "ls -p --color=auto")
                     ("rm" . "rm --one-file-system"))))))))
