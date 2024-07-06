(eval-when-compile
  (require 'use-package))

(require 'server)
(unless (server-running-p)
  (server-start)) 

(setq inhibit-startup-message t
      visible-bell t)


;; Turn different modes off and on

;; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(savehist-mode 1)

;; Change location of backups and autosaves

(setq temporary-file-directory "C:/LocalData/")

(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Load packages via use-package

(use-package cider
  :ensure t)

(use-package ess-site
  :ensure t)

(use-package modus-themes
  :ensure t)

(load-theme 'modus-vivendi t)

(custom-set-faces
 '(default ((t (:family "Inconsolata Nerd Font" :foundry "outline" :slant normal :weight regular :height 100 :width normal)))))
