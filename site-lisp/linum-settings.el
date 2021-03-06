;;; linum-settings.el --- Settings for `linum-mode' and its extensions
;; -*- Emacs-Lisp -*-

;; Copyright (C) 2012 Dylan.Wen

;; Author: Dylan.Wen <hhkbp2@gmail.com>
;; Time-stamp: <2016-03-22 12:17>

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

;;; Code:


(require 'linum+)
(require 'linum-relative)
;; load face settings
(require 'linum-face-settings)
(require 'dev-base-settings)
(require 'dw-functionals)


(defun linum+-settings ()
  "Settings for `linum'."
  ;; (setq linum+-offset t)
  )


(defun linum-relative-settings ()
  "Settings for `linum-relative'."
  (linum-relative-on))


(defun linum-settings ()
  (dolist (mode-hook
           (append usual-mode-hook-list dev-mode-hook-list))
    (add-hook mode-hook
              (lambda ()
                (linum-mode 1))))
  ;; show line numbers in absolute value
  (linum+-settings)
  ;; alternative, show line numbers
  ;;(linum-relative-settings)
  )


(eval-after-load 'linum
  '(linum-settings))

(provide 'linum-settings)

;;; linum-settings.el ends here
