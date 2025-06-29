;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     yaml
     php
     ruby
     html
     (clojure :variables
              ; clojure-enable-fancify-symbols t
              clojure-enable-clj-refactor t
              clojure-enable-linters 'clj-kondo)
     markdown
     javascript
     react
     helm
     auto-completion
     emacs-lisp
     org
     spell-checking
     syntax-checking

     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; better-defaults
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      evil-smartparens
                                      ;rjsx-mode
                                      exec-path-from-shell
                                      ;flycheck-clj-kondo
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    ;; Circumventing the "Symbol’s function definition is void: org-projectile:per-repo" issue
                                    org-projectile
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         fogus
                         granger
                         misterioso)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; Automatically refresh buffers when the underlying file changes.
  (global-auto-revert-mode t)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; sync PATH with shell
  (use-package exec-path-from-shell
    :if (memq window-system '(mac ns))
    :config (exec-path-from-shell-initialize))

  ;; NeoTree theme
  (setq neo-theme 'arrow)

  ;; Fix NeoTree split resizing
  (setq neo-window-fixed-size nil)

  ;; Navigate between WORDS
  (defalias 'forward-evil-word 'forward-evil-symbol)

  ;; Bind ä and ö characters to their keyboard layout counterparts
  (define-key key-translation-map (kbd "M-;") (kbd "ö"))
  (define-key key-translation-map (kbd "M-:") (kbd "Ö"))
  (define-key key-translation-map (kbd "M-'") (kbd "ä"))
  (define-key key-translation-map (kbd "M-\"") (kbd "Ä"))

  ;; General key bindings
  (spacemacs/set-leader-keys "si" 'helm-imenu)

  ;; Clojure
  ;;

  ;; clj-kondo
  ;(add-hook 'clojure-mode-hook #'flycheck-mode)
  ;(use-package clojure-mode
  ;  :ensure t
  ;  :config
  ;  (require 'flycheck-clj-kondo))

  (defun my-cider-reset ()
    (interactive)
    (cider-ensure-connected)
    (save-some-buffers)
    (cider-interactive-eval "(user/reset)"))

  (defun my-cider-stop ()
    (interactive)
    (cider-ensure-connected)
    (save-some-buffers)
    (cider-interactive-eval "(user/stop)"))

  (defun my-cider-dev-db-reset ()
    (interactive)
    (cider-ensure-connected)
    (save-some-buffers)
    (cider-interactive-eval "(user/reset-dev-db)"))

  (defun my-eval-eval-current-sexp ()
    (interactive "va(")
    (cider-eval-region))

  ;; Paredit key bindings for smartparens commands
  (sp-use-paredit-bindings)
  ;; Major mode keybindings
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "F" #'my-cider-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "S" #'my-cider-stop)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "D" #'my-cider-dev-db-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "F" #'my-cider-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "(" 'sp-wrap-round)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "[" 'sp-wrap-square)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "{" 'sp-wrap-curly)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "<" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode ">" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "ak" 'sp-kill-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "ar" 'sp-raise-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "ai" 'sp-indent-defun)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "ay" 'sp-copy-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "abs" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "afs" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "abb" 'sp-backward-barf-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "afb" 'sp-forward-barf-sexp)

  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "F" #'my-cider-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "S" #'my-cider-stop)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "D" #'my-cider-dev-db-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "(" 'sp-wrap-round)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "[" 'sp-wrap-square)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "{" 'sp-wrap-curly)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "<" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode ">" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "ak" 'sp-kill-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "ar" 'sp-raise-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "ai" 'sp-indent-defun)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "ay" 'sp-copy-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "abs" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "afs" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "abb" 'sp-backward-barf-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurescript-mode "afb" 'sp-forward-barf-sexp)

  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "F" #'my-cider-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "S" #'my-cider-stop)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "D" #'my-cider-dev-db-reset)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "(" 'sp-wrap-round)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "[" 'sp-wrap-square)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "{" 'sp-wrap-curly)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "<" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode ">" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "ak" 'sp-kill-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "ar" 'sp-raise-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "ai" 'sp-indent-defun)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "ay" 'sp-copy-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "abs" 'sp-backward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "afs" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "abb" 'sp-backward-barf-sexp)
  (spacemacs/set-leader-keys-for-major-mode 'clojurec-mode "afb" 'sp-forward-barf-sexp)

  ;; wip
  (spacemacs/set-leader-keys-for-major-mode 'clojure-mode "jj" #'my-eval-eval-current-sexp)

  ;; Figwheel
  (setq cider-cljs-lein-repl
        "(do (require 'figwheel-sidecar.repl-api)
       (figwheel-sidecar.repl-api/start-figwheel!)
       (figwheel-sidecar.repl-api/cljs-repl))")


  ;; JavaScript
  ;;

  ;;(use-package rjsx-mode
  ;;  :mode (("\\.js\\'" . rjsx-mode))
  ;;  :init
  ;;  (setq js2-highlight-level 3
  ;;        js2-mode-assume-strict t
  ;;        js2-strict-trailing-comma-warning nil
  ;;        js2-missing-semi-one-line-override t
  ;;        js2-allow-rhino-new-expr-initializer nil
  ;;        js2-global-externs '("jest"
  ;;                             "require"
  ;;                             "describe"
  ;;                             "it"
  ;;                             "test"
  ;;                             "expect"
  ;;                             "afterEach"
  ;;                             "beforeEach"
  ;;                             "afterAll"
  ;;                             "beforeAll")
  ;;        js2-include-node-externs t
  ;;        js2-warn-about-unused-function-arguments t
  ;;        js2-basic-offset 2
  ;;        js-switch-indent-offset 2)
  ;;  (add-hook 'rjsx-mode-hook (lambda ()
  ;;                              (subword-mode 1)
  ;;                              (diminish 'subword-mode)
  ;;                              (js2-imenu-extras-mode 1)))
  ;;  :config
  ;;  (use-package tern
  ;;    :diminish tern-mode
  ;;    :init
  ;;    (add-hook 'rjsx-mode-hook 'tern-mode))
  ;;  (use-package js-doc))

  (sp-local-pair 'react-mode "<" ">" :actions nil)

  (setenv "PATH" (concat (getenv "PATH") ":/Users/hannu/.nvm/versions/node/v10.14.0/bin/"))
  (setq exec-path (append exec-path '("/Users/hannu/.nvm/versions/node/v10.14.0/bin/")))

  (setq-default js2-basic-offset 2
                js-indent-level 2)

  (spacemacs/set-leader-keys-for-major-mode 'js2-mode "gg" 'js2-jump-to-definition) ;

  ;; Web mode
  ;;

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(solarized-theme solarized-theme-theme color-theme-sanityinc-solarized sublime-themes flycheck-pos-tip pos-tip flycheck-clj-kondo flycheck flyspell-correct-helm flyspell-correct auto-dictionary yaml-mode phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby powerline projectile hydra lv parseedn parseclj a avy anzu iedit smartparens f evil goto-chg helm helm-core transient async dash org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot rjsx-mode helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern dash-functional tern company-statistics company clojure-snippets auto-yasnippet ac-ispell auto-complete smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor helm-css-scss haml-mode evil-smartparens clj-refactor inflections edn paredit peg cider-eval-sexp-fu cider sesman queue clojure-mode mmm-mode markdown-toc markdown-mode gh-md skewer-mode simple-httpd json-snatcher json-reformat yasnippet multiple-cursors js2-mode helm-themes helm-swoop helm-projectile helm-mode-manager helm-flx helm-descbinds helm-ag ace-jump-helm-line ws-butler winum which-key wgrep web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spaceline smex slim-mode scss-mode sass-mode restart-emacs request rainbow-delimiters pug-mode popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum livid-mode linum-relative link-hint json-mode js2-refactor js-doc ivy-hydra indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu emmet-mode elisp-slime-nav dumb-jump diminish define-word counsel-projectile column-enforce-mode coffee-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(yasnippet-snippets writeroom-mode visual-fill-column undo-tree symon string-inflection spaceline-all-the-icons memoize seeing-is-believing ruby-refactor ruby-hash-syntax prettier-js password-generator overseer org-brain nameless json-navigator hierarchy impatient-mode parent-mode helm-xref helm-purpose window-purpose imenu-list helm-org-rifle flx evil-org evil-lion evil-goggles evil-cleverparens editorconfig doom-modeline shrink-path all-the-icons counsel swiper ivy company-php ac-php-core xcscope s seq spinner pkg-info epl centered-cursor-mode packed popup solarized-theme solarized-theme-theme color-theme-sanityinc-solarized sublime-themes flycheck-pos-tip pos-tip flycheck-clj-kondo flycheck flyspell-correct-helm flyspell-correct auto-dictionary yaml-mode phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby powerline projectile hydra lv parseedn parseclj a avy anzu iedit smartparens f evil goto-chg helm helm-core transient async dash org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot rjsx-mode helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern dash-functional tern company-statistics company clojure-snippets auto-yasnippet ac-ispell auto-complete smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor helm-css-scss haml-mode evil-smartparens clj-refactor inflections edn paredit peg cider-eval-sexp-fu cider sesman queue clojure-mode mmm-mode markdown-toc markdown-mode gh-md skewer-mode simple-httpd json-snatcher json-reformat yasnippet multiple-cursors js2-mode helm-themes helm-swoop helm-projectile helm-mode-manager helm-flx helm-descbinds helm-ag ace-jump-helm-line ws-butler winum which-key wgrep web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spaceline smex slim-mode scss-mode sass-mode restart-emacs request rainbow-delimiters pug-mode popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum livid-mode linum-relative link-hint json-mode js2-refactor js-doc ivy-hydra indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu emmet-mode elisp-slime-nav dumb-jump diminish define-word counsel-projectile column-enforce-mode coffee-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link))
 '(paradox-github-token t)
 '(safe-local-variable-values
   '((eval progn
           (make-variable-buffer-local 'cider-jack-in-nrepl-middlewares)
           (add-to-list 'cider-jack-in-nrepl-middlewares "shadow.cljs.devtools.server.nrepl/middleware"))
     (javascript-backend . tide)
     (javascript-backend . tern)
     (javascript-backend . lsp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
