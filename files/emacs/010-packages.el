;; packages
(eval-when-compile
  (require 'use-package))

;; use shell PATH
(use-package exec-path-from-shell
  :init
  (exec-path-from-shell-initialize)
  :ensure t)

(use-package which-key
  :init
  (which-key-mode)
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package projectile
  :ensure t)

(use-package slime
  :init
  (setq inferior-lisp-program "clisp")
  :ensure t)
	    
(use-package geiser-guile
  :ensure t)

(use-package slime-company
  :ensure t)

(use-package smartparens
  :init
  (add-hook 'js-mode-hook #'smartparens-mode)
  :ensure t)

(use-package lsp-mode
  :ensure t)

(use-package go-mode
  :init
  (add-hook 'go-mode-hook 'lsp-deferred)
  :ensure t)

(use-package rustic
  :ensure t)

(use-package company-quickhelp
  :init
  (company-quickhelp-mode)
  :ensure t)

(use-package kubernetes
  :ensure t
  :commands (kubernetes-overview))

(use-package evil
  :init
  (evil-mode 1)
  (evil-select-search-module 'evil-search-module 'evil-search)
  :ensure t)

;; If you want to pull in the Evil compatibility package.
(use-package kubernetes-evil
  :ensure t
  :after kubernetes)

(use-package highlight-indent-guides
  :init
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  :ensure t)

(use-package gruvbox-theme
  :init
  (add-hook 'after-init-hook 
	  (lambda () (load-theme 'gruvbox t)))
  :ensure t)

(use-package nix-mode
  :ensure t
  :mode "\\.nix\\'")
