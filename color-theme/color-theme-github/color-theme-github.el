;;; github-theme.el --- Github color theme for GNU Emacs 24

;; Copyright (C) 2011 Dudley Flanders <dudley@steambone.org>

;; Author: Dudley Flanders
;; Adapted-By: Yesudeep Mangalapilly
;; Adapted-By: Joshua Timberman
;; Keywords: github color theme
;; URL: http://github.com/dudleyf/color-theme-github
;; Version: 0.0.3
;; Package-Requires: ((color-theme "6.6.1"))

;; This file is not a part of GNU Emacs.

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

(deftheme github "Port of Github Theme for Emacs 24")

(let ((*background-color*  "#f8f8ff")
      (*background-mode*  'light)
      (*border-color*  "black")
      (*cursor-color*  "#000000")
      (*foreground-color*  "#000000")
      (*mouse-color*  "#bcd5fa"))
  
  (custom-theme-set-faces
   'github

   `(default ((t (:stipple nil :background "#f8f8ff" :foreground "#000000" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
   `(css-property ((t (:foreground "#0086b3"))))
   `(css-selector ((t (:foreground "#990000"))))
   `(cursor ((t (:background "#a7a7a7"))))
   `(font-lock-builtin-face ((t (nil))))
   `(font-lock-comment-delimiter-face ((t (:italic t :slant italic :foreground "#999988"))))
   `(font-lock-comment-face ((t (:italic t :foreground "#999988" :slant italic))))
   `(font-lock-constant-face ((t (:foreground "#990073"))))
   `(font-lock-doc-face ((t (:foreground "#dd1144"))))
   `(font-lock-function-name-face ((t (:foreground "#990000"))))
   `(font-lock-keyword-face ((t (:bold t :weight bold))))
   `(font-lock-negation-char-face ((t (nil))))
   `(font-lock-reference-face ((t (nil))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground "#009926"))))
   `(font-lock-regexp-grouping-construct ((t (:foreground "#009926"))))
   `(font-lock-string-face ((t (:foreground "#dd1144"))))
   `(font-lock-type-face ((t (:foreground "#445588"))))
   `(font-lock-variable-name-face ((t (:foreground "#0086b3"))))
   `(highlight ((t (:background "#acc3e6"))))
   `(link ((t (:foreground "blue1" :underline t))))
   `(link-visited ((t (:underline t :foreground "magenta4"))))
   `(minibuffer-prompt ((t (:foreground "#445588"))))
   `(mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button) :height 0.85))))
   `(mouse ((t (:background "#bcd5fa"))))
   `(region ((t (:background "#bcd5fa"))))
   `(show-paren-match ((t (:background "#fff6a9"))))
   `(show-paren-mismatch ((t (:background "#dd1144"))))))

(provide-theme 'github)

;;; color-theme-github.el ends here
