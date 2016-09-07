(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(global-linum-mode t)
(global-hl-line-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(nyan-mode t)

(custom-set-variables
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (foggy-night-theme)))
 '(nyan-animate-nyancat t)
 '(nyan-animation-frame-interval 0.5)
 '(nyan-bar-length 8)
 '(nyan-wavy-trail t))
