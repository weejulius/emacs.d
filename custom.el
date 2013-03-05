(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

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
(add-to-list 'auto-mode-alist '("\\.vm\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-hook 'local-write-file-hooks
          (lambda () (delete-trailing-whitespace) nil))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector ["#110F13" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5"])
 '(ansi-term-color-vector [unspecified "#110F13" "#b13120" "#719f34" "#ceae3e" "#7c9fc9" "#7868b5" "#009090" "#F4EAD5"] t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (soothe)))
 '(custom-safe-themes (quote ("ebf6314f5c7c71034ffe2d67db489c6d868be3cf8cdba02e5a936808c5df75c8" default)))
 '(session-use-package t nil (session))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "nil" :family "CodingFontTobi" :foundry "altsys" :slant normal :weight normal :height 120 :width normal)))))
