(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require-package 'web-mode)
(require-package 'find-file-in-repository)
(require-package 'midje-mode)
(require-package 'mustache)
(require-package 'popup-switcher)
(require-package 'popwin)

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

(desktop-save-mode 1)
(require 'popup-switcher)
(setq psw-in-window-center t)
(global-set-key [f2] 'psw-switch-buffer)
(require 'popwin)
(popwin-mode 1)

;;clojure identation
(setq tab-width 2
      indent-tabs-mode nil)

(require 'midje-mode)
(add-hook 'clojure-mode-hook 'midje-mode)

(add-hook
 'clojure-mode-hook
 '(lambda ()
    (font-lock-add-keywords
     nil
     '(("(\\([^(def|fn|try|catch|let|if|else|long|:|\[)][a-zA-Z0-9\-\._\?/\!>]+\\)[\t \n)]+" 1 '(:foreground "#D62255" :weight bold) t)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector ["#000000" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5"])
 '(ansi-term-color-vector [unspecified "#000000" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5goa"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote nil))
 '(custom-safe-themes (quote ("8c5ffc9848db0f9ad4e296fa3cba7f6ea3b0e4e00e8981a59592c99d21f99471" "b3336919d9bb4c3e9a89ddb489cc9a255e13444ebde75e59cf01dc302bd5c715" "ebf6314f5c7c71034ffe2d67db489c6d868be3cf8cdba02e5a936808c5df75c8" "fd8c6dada4fb6a26dc8c29adf6844481c371defca6f3046be34b07e67ff9530a" "b1f8e1633820964fe345c8079b4aa901cb1aa751d894f245fb2129a6aad15098" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 4 nil (fringe))
 '(main-line-color1 "#000000")
 '(main-line-color2 "#000000")
 '(main-line-separator-style (quote chamfer))
 '(powerline-color1 "#202020")
 '(powerline-color2 "#000000")
 '(session-use-package t nil (session))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(whitespace- nil))
