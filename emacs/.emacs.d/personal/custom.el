(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(nord))
 '(custom-safe-themes
   '("98b4ef49c451350c28a8c20c35c4d2def5d0b8e5abbc962da498c423598a1cdd" default))
 '(package-selected-packages
   '(lua-mode xclip zop-to-char zenburn-theme yaml-mode which-key web-mode volatile-highlights vertico undo-tree super-save smartrep smartparens rainbow-mode rainbow-delimiters projectile orderless operate-on-number nord-theme nlinum move-text magit lsp-ui json-mode js2-mode imenu-anywhere hl-todo gnu-elpa-keyring-update git-timemachine git-modes gist flycheck expand-region exec-path-from-shell epl elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux consult company browse-kill-ring anzu ag ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use `nord4` from Nord's "Snow Storm" palette as background color.
(setq nord-region-highlight "snowstorm")



;; (defun load-nord-theme (_frame)
;;   (enable-theme 'nord))

;; (add-hook 'after-make-frame-functions #'load-nord-theme)

;; ----- ORG-MODE Customizations -----
;; Enable org-mode TODOs to overwrite headline.
(setq org-fontify-todo-headline t)

(setq prelude-guru nil)
