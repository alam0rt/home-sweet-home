(define-module (emacs-sam)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages aspell)
  #:use-module (gnu packages base)
  #:use-module (gnu packages code)
  #:use-module (guix build-system emacs)
  #:use-module (gnu packages gdb)
  #:use-module (gnu packages mail)
  #:use-module (guix download)  ;;so I can download the source code...
  #:use-module (guix git-download)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz)
  #:use-module (gnu packages rust-apps)
  #:use-module ((guix licenses) #:prefix license:)
  )

(define-public emacs-sam
  (package
   (inherit emacs)
   (name "emacs-sam")
   ;; (inputs
   ;;  `(("gnu-make"                        ,gnu-make)))
   (propagated-inputs  ;;installed in the store and present in the profile
    `(("aspell"                          ,aspell)
      ("aspell-dict-en"                  ,aspell-dict-en)
      ("emacs-alert"                     ,emacs-alert)
      ;; ("emacs-aggressive-fill-paragraph" ,emacs-aggressive-fill-paragraph)
      ("emacs-aggressive-indent"         ,emacs-aggressive-indent)
      ("emacs-company"                   ,emacs-company)
      ;; ;; list library
      ("emacs-dash"                      ,emacs-dash)
      ("emacs-evil"                      ,emacs-evil)
      ("emacs-evil-args"                 ,emacs-evil-args)
      ("emacs-evil-commentary"           ,emacs-evil-commentary)
      ("emacs-evil-goggles"              ,emacs-evil-goggles)
      ("emacs-evil-surround"             ,emacs-evil-surround)
      ;; this lets you use the debian pastebin!!!
      ("emacs-debpaste"                  ,emacs-debpaste)
      ("emacs-flycheck"                  ,emacs-flycheck)
      ("emacs-flycheck-guile"            ,emacs-flycheck-guile)
      ("emacs-flx"                       ,emacs-flx)
      ("emacs-geiser"                    ,emacs-geiser)
      ("emacs-geiser-guile"              ,emacs-geiser-guile)
      ;; ("emacs-lsp-mode"                  ,emacs-lsp-mode)
      ("emacs-lua-mode"                  ,emacs-lua-mode)
      ("emacs-magit"                     ,emacs-magit)
      ("emacs-magit-popup"               ,emacs-magit-popup)
      ("emacs-magit-todos"               ,emacs-magit-todos)
      ("emacs-magit-org-todos-el"        ,emacs-magit-org-todos-el)
      ("emacs-markdown-mode"             ,emacs-markdown-mode)
      ("emacs-org"                       ,emacs-org)
      ("emacs-org-bullets"               ,emacs-org-bullets)
      ("emacs-org-contrib"               ,emacs-org-contrib)
      ("emacs-pdf-tools"                 ,emacs-pdf-tools)
      ("emacs-page-break-lines"          ,emacs-page-break-lines)
      ;; todo make this emacs-parinfer-mode@0.4.10
      ("emacs-paredit"                   ,emacs-paredit)
      ("emacs-parinfer-mode"             ,emacs-parinfer-mode)
      ;; ;; display CSS #000000 as black
      ("emacs-rainbow-mode"              ,emacs-rainbow-mode)
      ("emacs-s"                         ,emacs-s)
      ;;("emacs-smart-mode-line"         ,emacs-smart-mode-line)
      ("emacs-smartparens"               ,emacs-smartparens)
      ("emacs-which-key"                 ,emacs-which-key)
      ;;("emacs-wget"                      ,emacs-wget)
      ("emacs-use-package"               ,emacs-use-package)
      ("gdb"                             ,gdb)
      ;;("notmuch"                         ,notmuch)
      ("ripgrep"                         ,ripgrep)
      ("emacs-rg"                        ,emacs-rg)))))
