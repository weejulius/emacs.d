(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require-package 'web-mode)
(require-package 'find-file-in-repository)
(require-package 'midje-mode)
(require-package 'mustache-mode)
(require-package 'popup-switcher)
(require-package 'popwin)
(require-package 'soothe-theme)
(require-package 'clues-theme)
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

;;w3m
(setq exec-path (cons "/usr/bin/w3m" exec-path))

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
 '(font-lock-negation-char-face ((t (:foreground "red"))) t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector
   ["#000000" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5"])
 '(ansi-term-color-vector
   [unspecified "#000000" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5goa"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (clues)))
 '(custom-safe-themes
   (quote
    ("65510ff6bb3cddeb9fcdc61770abcb8cbf8a15185a0b268f77c6b515650a625b" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 4 nil (fringe))
 '(linum-format " %6d ")
 '(main-line-color1 "#000000")
 '(main-line-color2 "#000000")
 '(main-line-separator-style (quote chamfer))
 '(powerline-color1 "#202020")
 '(powerline-color2 "#000000")
 '(session-use-package t nil (session))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(whitespace- nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
