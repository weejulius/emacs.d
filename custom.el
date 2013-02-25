;;custom fill column indicator
(setq fci-rule-column 80)

;;custom multi term
(setq multi-term-program "/bin/zsh")

;;high light current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#eee")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "Chinese-GB18030")
 '(custom-enabled-themes (quote (tango)))
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "e9a1226ffed627ec58294d77c62aa9561ec5f42309a1f7a2423c6227e34e3581" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#2a2a2a")
 '(session-use-package t nil (session))
 '(term-bind-key-alist (quote (("M-d" . term-send-forward-kill-word) ("M-DEL" . term-send-forward-kill-word) ("C-DEL" . term-send-forward-kill-word) ("M-<backspace>" . term-send-backward-kill-word) ("C-<backspace>" . term-send-backward-kill-word) ("M-<right>" . term-send-forward-word) ("C-<right>" . term-send-forward-word) ("M-<left>" . term-send-backward-word) ("C-<left>" . term-send-backward-word))))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
