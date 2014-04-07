(load-theme 'solarized-dark t)
(smex-initialize)
(column-number-mode t)


(global-flycheck-mode)
(global-rainbow-delimiters-mode)
(projectile-global-mode)
(electric-layout-mode)
;; (electric-indent-mode)
(electric-pair-mode)
(setq yas/triggers-in-field t);
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(require 'ess-site)
(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode 1)
(add-hook 'jade-mode-hook (lambda ()
                            (setq yas/dont-activate t)))
(add-hook 'org-mode-hook
          #'(lambda ()
              (setq yas/fallback-behavior
                    `(apply ,(lookup-key org-mode-map [tab])))
              (local-set-key [tab] 'yas/expand)
              (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq ido-use-faces nil)

;; open gist page on github
(setq gist-view-gist t)
