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

(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (soothe)))
 '(custom-safe-themes (quote ("ebf6314f5c7c71034ffe2d67db489c6d868be3cf8cdba02e5a936808c5df75c8" "fd8c6dada4fb6a26dc8c29adf6844481c371defca6f3046be34b07e67ff9530a" "b1f8e1633820964fe345c8079b4aa901cb1aa751d894f245fb2129a6aad15098" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 4 nil (fringe))
 '(powerline-color1 "#202020")
 '(powerline-color2 "#000000")
 '(whitespace- nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
