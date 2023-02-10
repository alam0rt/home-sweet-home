(add-hook `prog-mode-hook `display-line-numbers-mode)
(add-hook `after-init-hook `fancy-startup-screen)
;; allow Ctrl-C in terminal
(add-hook 'ansi-term-mode-hook
	  (lambda () (local-set-key (kdb "M-x" 'execute-extended-command)))
	  (lambda () (local-set-key (kbd "C-c" 'term-quit-subjob))))

(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "Inconsolata"))

;; set default shell
(defvar set-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list set-term-shell)))
(ad-activate `ansi-term)

;; prefer y/n
(defalias `yes-or-no-p `y-or-n-p)

;; hotkeys
(global-set-key (kbd "<s-return>") `ansi-term)

(when window-system (global-prettify-symbols-mode t)) ;; prettify
(setq make-backup-files nil)
(setq auto-save-default nil)
(savehist-mode 1)

;; Tramp
(require 'tramp)
(add-to-list 'tramp-remote-path "/run/current-system/profile/bin")
(add-to-list 'tramp-remote-path "/run/current-system/profile/sbin")
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
  
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" default))
 '(package-selected-packages
   '(gruvbox-theme nix-mode slime-company slime use-package smartparens lsp-mode kubernetes-evil highlight-indent-guides helm go-mode flycheck evil-visual-mark-mode cyberpunk-theme company-quickhelp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
