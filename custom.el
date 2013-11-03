(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require-package 'web-mode)
(require-package 'find-file-in-repository)
(require-package 'midje-mode)
(require-package 'mustache-mode)
(require-package 'popup-switcher)
(require-package 'popwin)
(require-package 'soothe-theme)
(require-package 'clues-theme)

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
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight semi-bold :height 98 :width normal))))
 '(font-lock-negation-char-face ((t (:foreground "red")))))

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
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes (quote ("99cbc2aaa2b77374c2c06091494bd9d2ebfe6dc5f64c7ccdb36c083aff892f7d" "88b663861db4767f7881e5ecff9bb46d65161a20e40585c8128e8bed8747dae5" "450b29ed22abeeac279b7eeea592f4eea810105737716fc29807e1684e729c55" "75d4ccc5e912b93f722e57cca3ca1a15e079032cd69fd9bc67268b4c85639663" "f57ddf323083b497a32866e9d1603969c3ec1afde1622905be0aa22b42562aef" "1171e6a1416eaeda7f7642ebedd8666ea8d2fa0e976fd82445881a4e48f4ab70" "73b835431bdbc4e83a3b176a38ebb740fbac78aa2635e1d4827b3c8211e0bc99" "65510ff6bb3cddeb9fcdc61770abcb8cbf8a15185a0b268f77c6b515650a625b" default)))
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
