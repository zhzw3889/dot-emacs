;; -*- Emacs-Lisp -*-
;; Settings for `tabbar-mode'.

;; Copyright (C) 2011 Dylan.Wen

;; Author: Dylan.Wen <dylan.wen.dw@gmail.com>
;; Time-stamp: <2011-02-05 13:08>

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; `tabbar-mode'
;; A tabbed bar of buffer

;;; Code:


;; load `tabbar.el', if it isn't loaded yet
(require 'tabbar)
;; load face settings
(require 'tabbar-face-settings)


(defun tabbar-settings ()
  "Settings for `tabbar-mode'."

  ;; load tabbar
  (tabbar-mode)

  ;; key binding
  ;; (global-set-key (kbd "") 'tabbar-backward-group)
  ;; (global-set-key (kbd "") 'tabbar-forward-group)
  ;; (global-set-key (kbd "") 'tabbar-backward)
  ;; (global-set-key (kbd "") 'tabbar-forward)
  (global-set-key [(f11)] 'tabbar-backward)
  (global-set-key [(f12)] 'tabbar-forward))


(eval-after-load "tabbar"
  `(tabbar-settings))


(provide 'tabbar-settings)
