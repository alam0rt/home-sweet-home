(require 'package)

(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
 
(setq package-enable-at-startup nil)
(package-initialize)

(require 'tramp)

(defvar utils/sorted-absolute-init-scripts)
(let* ((emacs-dir (file-name-as-directory (expand-file-name "emacs" (getenv "XDG_CONFIG_HOME"))))
       (default-directory emacs-dir)
       (init-scripts (file-expand-wildcards "???-*.el"))
       (sorted-init-scripts (sort init-scripts 'string=)))
  (setq utils/sorted-absolute-init-scripts
	(mapcar (lambda (name) (concat emacs-dir name)) sorted-init-scripts)))

(mapcar #'load utils/sorted-absolute-init-scripts)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" default))
 '(package-selected-packages
   '(ement quelpa-use-package quelpa gruvbox-theme nix-mode slime-company slime use-package smartparens lsp-mode kubernetes-evil highlight-indent-guides helm go-mode flycheck evil-visual-mark-mode cyberpunk-theme company-quickhelp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
