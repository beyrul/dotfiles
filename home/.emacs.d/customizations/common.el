;; rainbow brackets
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; indent guide
(indent-guide-global-mode)
(setq indent-guide-delay 0.05)
(show-paren-mode 1)
(global-diff-hl-mode 1)
(diff-hl-flydiff-mode 1)
(hlinum-activate)
;cursor
(setq-default cursor-type 'bar)
(set-cursor-color "#ff0000")
;; tabs - kill tabs put spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width tabWidth)
;; terminal
(prefer-coding-system 'utf-8)
(setq multi-term-program "/bin/zsh")