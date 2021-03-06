;;; fiplr-settings.el --- Settings for  `fiplr'
;; -*- Emacs-Lisp -*-

;; Copyright (C) 2013 Dylan.Wen

;; Author: Dylan.Wen <hhkbp2@gmail.com>
;; Time-stamp: <2016-03-22 11:36>

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


(require 'fiplr)

(defun fiplr-settings ()
  "Settings for `fiplr'."

  ;; the default value includes these
  ;;(setq fiplr-root-markers '(".git" ".svn"))
  ;; (setq fiplr-ignored-globs '((directories (".git" ".svn"))
  ;;                             (files ("*.jpg" "*.png" "*.zip" "*~"))))

  ;; key bindings
  (global-set-key [(control x) (.)] 'fiplr-find-file))


(eval-after-load "fiplr"
  `(fiplr-settings))

(provide 'fiplr-settings)

;;; fiplr-settings.el ends here
