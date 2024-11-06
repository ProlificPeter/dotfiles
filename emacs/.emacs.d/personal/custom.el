(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(nord))
 '(custom-safe-themes
   '("98b4ef49c451350c28a8c20c35c4d2def5d0b8e5abbc962da498c423598a1cdd" default)))
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
