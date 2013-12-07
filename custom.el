(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require-package 'web-mode)
(require-package 'find-file-in-repository)
(require-package 'midje-mode)
(require-package 'mustache-mode)
(require-package 'popup-switcher)
(require-package 'popwin)
(require-package 'soothe-theme)
(require-package 'clues-theme)
;;(require-package 'smartparens)

(require-package 'align-cljlet)
;;custom fill column indicator
(setq fci-rule-column 80)

;;switch buffer quickly
(global-set-key [S-left] 'windmove-left)
(global-set-key [S-right] 'windmove-right)
(global-set-key [S-up] 'windmove-up)
(global-set-key [S-down] 'windmove-down)

;;custom multi term
(setq multi-term-program "/bin/zsh")

;;high light current line
(global-hl-line-mode 1)
;;(set-face-background 'hl-line "#eee")

;; web mode for velocity
(require 'web-mode)
(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "blue")
(set-face-attribute 'web-mode-html-attr-value-face nil :foreground "Pink3")
(add-to-list 'auto-mode-alist '("\\.vm\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.httl?\\'" . web-mode))
(add-hook 'local-write-file-hooks
          (lambda () (delete-trailing-whitespace) nil))

(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(desktop-save-mode 1)
(require 'popup-switcher)
(setq psw-in-window-center t)
(global-set-key [f2] 'psw-switch-buffer)
(require 'popwin)
(popwin-mode 1)
(require 'mustache-mode)

;;clojure identation
(setq tab-width 2
      indent-tabs-mode nil)
(standard-display-ascii ?\t "^I")

(require 'midje-mode)
(add-hook 'clojure-mode-hook 'midje-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "450b29ed22abeeac279b7eeea592f4eea810105737716fc29807e1684e729c55" "88b663861db4767f7881e5ecff9bb46d65161a20e40585c8128e8bed8747dae5" "73b835431bdbc4e83a3b176a38ebb740fbac78aa2635e1d4827b3c8211e0bc99" "75d4ccc5e912b93f722e57cca3ca1a15e079032cd69fd9bc67268b4c85639663" "99cbc2aaa2b77374c2c06091494bd9d2ebfe6dc5f64c7ccdb36c083aff892f7d" "monokai" default)))
 '(session-use-package t nil (session)))
