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

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(use-package ess-site)
(use-package modus-themes)

(load-theme 'modus-vivendi t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(modus-themes ess))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata Nerd Font" :foundry "outline" :slant normal :weight regular :height 100 :width normal)))))
