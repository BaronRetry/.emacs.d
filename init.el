;;; -*- lexical-binding: t -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(use-package lsp-mode)
(use-package tree-sitter)
(use-package tree-sitter-langs)
(use-package treemacs)
(use-package lsp-treemacs)

(savehist-mode 1)
(global-ede-mode t)

(treemacs)
(load-theme 'modus-vivendi-tinted)

(custom-set-variables
 '(package-selected-packages
   '(lsp-docker lsp-java lsp-mode lsp-pyright lsp-treemacs
		project-treemacs treeview)))



