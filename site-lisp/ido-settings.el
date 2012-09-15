;; -*- Emacs-Lisp -*-
;; Settings for `ido-mode'.

;; Copyright (C) 2011 Dylan.Wen

;; Author: Dylan.Wen <dylan.wen.dw@gmail.com>
;; Time-stamp: <2011-02-05 14:55>

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
;; `ido-mode'
;; open file, find file and switch buffer
;;

;;; Code:


(require 'ido)
;; load face settings
(require 'ido-face-settings)


(defun ido-settings ()
  "Settings for `ido-mode'."

  (setq ido-save-directory-list-file "~/.emacs.d/ido.last")
  ;; turn on ido mode
  (ido-mode 1)
  ;; toggle ido speed-ups everywhere file and directory names are read.
  (ido-everywhere 1)
  )

(eval-after-load "ido"
  `(ido-settings))


(provide 'ido-settings)
