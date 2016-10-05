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
   dotspacemacs-configuration-layer-path
   '(
     "~/.spacemacs.d/layers/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     helm
     fasd
     version-control
     git
     github
     shell
     gtags
     pandoc
     python
     scala
     c-c++
     haskell
     clojure
     extra-langs
     javascript
     java
     emacs-lisp
     yaml
     latex
     sql
     typescript
     vimscript
     html
     regex
     colors
     perspectives
     auto-completion
     semantic
     syntax-checking
     org
     ibuffer
     spell-checking
     spacemacs-layouts
     speed-reading
     markdown
     games
     themes-megapack
     puppet
     mu4e
     spacemacs-layouts
     theming
     typography
     command-log
     ztree
     other
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     wgrep
     groovy-mode
     ag
     ob-ipython
     syslog-mode
     log4j-mode
     fireplace
     csv-mode
     thrift
     highlight-tail
     vlf
     es-mode
     ob-http
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages
   '(
     evil-search-highlight-persist
     vi-tilde-fringe
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
  (progn
    (add-to-list 'custom-theme-load-path "~/.spacemacs.d/themes")
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
     dotspacemacs-editing-style 'hybrid
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
     dotspacemacs-themes
     '(
       apples2
       apples
       spacemacs-dark
       monokai
       leuven
       solarized-dark
       zenburn
       )
     ;; If non nil the cursor color matches the state color in GUI Emacs.
     dotspacemacs-colorize-cursor-according-to-state t
     ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
     ;; quickly tweak the mode-line size to make separators look not too crappy.
     dotspacemacs-default-font '("DejaVu Sans Mono"
                                 :size 15
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1)
     ;; The leader key
     dotspacemacs-leader-key "SPC"
     ;; The leader key accessible in `emacs state' and `insert state'
     ;; (default "M-m")
     dotspacemacs-emacs-leader-key "M-m"
     ;; Major mode leader key is a shortcut key which is the equivalent of
     ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
     dotspacemacs-major-mode-leader-key ","
     ;; Major mode leader key accessible in `emacs state' and `insert state'.
     ;; (default "C-M-m)
     dotspacemacs-major-mode-emacs-leader-key "C-M-m"
     ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
     ;; (default "SPC")
     dotspacemacs-emacs-command-key "SPC"
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
     dotspacemacs-active-transparency 97
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
     ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
     ;; derivatives. If set to `relative', also turns on relative line numbers.
     ;; (default nil)
     dotspacemacs-line-numbers nil
     ;; Code folding method. Possible values are `evil' and `origami'.
     ;; (default 'evil)
     dotspacemacs-folding-method 'evil
     ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
     ;; (default nil)
     dotspacemacs-smartparens-strict-mode nil
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
     dotspacemacs-whitespace-cleanup nil
     )))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (progn
    ;; identification
    (setf user-full-name "Andrew Apollonsky")
    (setf user-mail-address "Anapollonsky@gmail.com")

    ;; browser
    (if (eq system-type 'windows-nt)
        (setq browse-url-browser-function 'browse-url-default-windows-browser)
      (setq browse-url-generic-program (or (executable-find "google-chrome")
                                           (executable-find "google-chrome-stable")
                                           (executable-find "chromium")
                                           (executable-find "firefox"))))


    (setq browse-url-browser-function 'browse-url-generic)

    ;; no dialog boxes
    (setq use-dialog-box nil)

    ;; UTF-8 as default
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)
    (set-language-environment "UTF-8")
    (prefer-coding-system 'utf-8)

    ;; Backups
    ;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files
    (defvar --backup-directory (concat user-emacs-directory "backups"))
    (if (not (file-exists-p --backup-directory))
        (make-directory --backup-directory t))
    (setq backup-directory-alist `(("." . ,--backup-directory))
          make-backup-files t    ; backup of a file the first time it is saved.
          backup-by-copying t    ; don't clobber symlinks
          version-control t      ; version numbers for backup files
          delete-old-versions t  ; delete excess backup files silently
          delete-by-moving-to-trash t
          kept-old-versions 6    ; oldest versions to keep when a new numbered backup is made
          kept-new-versions 9    ; newest versions to keep when a new numbered backup is made
          auto-save-default t    ; auto-save every buffer that visits a file
          auto-save-timeout 20   ; number of seconds idle time before auto-save (default: 30)
          auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300)
          vc-make-backup-files t)

    ;; History
    (setq savehist-file "~/.emacs.d/savehist")
    (savehist-mode 1)
    (setq history-length t)
    (setq history-delete-duplicates t)
    (setq savehist-save-minibuffer-history 1)
    (setq savehist-additional-variables
          '(kill-ring
            search-ring
            regexp-search-ring))

    ;; whitespace
    ;; (when (display-graphic-p) (spacemacs/toggle-whitespace-globally))
    ;; (setq whitespace-style
    ;;       '(face tabs spaces newline space-mark tab-mark newline-mark indentation space-after-tab space-before-tab))
    ;; (setq whitespace-display-mappings
    ;;       '(
    ;;         (space-mark 32 [183] [46]) ; normal space
    ;;         (newline-mark 10 [182 10]) ; newline
    ;;         (tab-mark 9 [9655 9] [92 9]) ; tab
    ;;         ))
    ;; (setq whitespace-display-mappings '(
    ;;                                     (space-mark   ?\     [?\u00B7]     [?.])
    ;;                                     (space-mark   ?\xA0  [?\u00A4]     [?_])
    ;;                                     (newline-mark ?\n    [?¶ ?\n])
    ;;                                     (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
    ;; ))

    ;; (when (display-graphic-p) (spacemacs/toggle-whitespace-globally))
    ;; (set-face-foreground 'whitespace-space "#282828") ;; Something is messing this up, changing it to theme orange


    ;; Configure additional packages
    (use-package wgrep)
    (use-package groovy-mode)
    (use-package ag)
    (use-package vlf
      :config (require 'vlf-setup))
    (use-package es-mode)

    ;; Undo-Tree
    (setq undo-tree-auto-save-history t)
    (setq undo-tree-visualizer-timestamps t)
    (define-key evil-normal-state-map "U" 'undo-tree-redo)

    ;; yasnippet
    (add-to-list 'hippie-expand-try-functions-list 'yas-hippie-try-expand)

    ;; Keybinding remapping
    (evil-leader/set-key "fF" 'spacemacs/sudo-edit)

    ;; org-babel
    (org-babel-do-load-languages ;; Parse babel blocks for these languages
     'org-babel-load-languages
     '((C . t)
       (java . t)
       (haskell . t)
       (python . t)
       (lisp . t)
       (latex . t)
       (sh . t)
       (elasticsearch . t)
       (http . t)
       (sql . t)
       ))
    (setq org-src-fontify-natively t)
    (add-to-list 'org-latex-packages-alist '("" "minted")) ;; Add minted to the defaults packages to include when exporting.
    (setq org-latex-listings 'minted)  ;; Tell the latex export to use the minted package for source code coloration.
    (setq org-latex-pdf-process ;; Let the exporter use the -shell-escape option to let latex execute external programs.
          '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

    ;; org-capture
    (setq org-directory "~/org")
    (setq org-default-notes-file (concat org-directory "/notes.org"))
    (evil-leader/set-key "ooc" 'org-capture)
    (setq org-capture-templates
          '(("t" "Todo" entry (file+headline (concat org-directory "/notes.org") "Tasks")
             "** TODO %?\n %i\n")
            ("l" "Link" plain (file+headline (concat org-directory "/notes.org") "Links")
             "- %?\n %x\n")
            ("q" "Quick Note" plain (file+headline (concat org-directory "/notes.org") "Quick Notes")
             "+ %?\n %i\n")))
    (setq org-agenda-files '("~/org/agenda.org" "~/org/notes.org"))
    (evil-leader/set-key "ofl" 'delete-blank-lines)

    ;; mark navigation
    (evil-leader/set-key "ono" 'pop-to-mark-command)
    (evil-leader/set-key "ong" 'pop-global-mark)
    (evil-leader/set-key "onu" 'push-mark-command)
    (setq global-mark-ring-max 128)

    ;; highlighting
    (evil-leader/set-key "ohs" 'hlt-highlight-symbol)
    (evil-leader/set-key "ohc" 'hlt-unhighlight-all-prop)

    ;; fireplace
    (evil-leader/set-key "ofr" 'fireplace)

    ;; colored parenthesis
    (rainbow-delimiters-mode 1)

    ;; highlight matching delimiter
    (highlight-parentheses-mode 1)

    ;; Replace insert with emacs state
    ;; (spacemacs/toggle-hybrid-mode-on)

    ;; misc
    (spacemacs/toggle-hungry-delete-on)
    (spacemacs/toggle-centered-point-globally-on)
    (spacemacs/toggle-automatic-symbol-highlight-on)
    (spacemacs/toggle-highlight-indentation-on)
    (spacemacs/toggle-syntax-checking-on)
    (spacemacs/toggle-spelling-checking-on)
    (spacemacs/toggle-semantic-stickyfunc-globally-on)
    (spacemacs/toggle-smartparens-globally-on)
    (spacemacs/toggle-camel-case-motion-globally-on)
    (global-auto-complete-mode 1)

    ;; indent guide
    (setq indent-guide-recursive t
          indent-guide-char "┊")

    ;; dired
    ;; try and guess target directory based on presence of other dired buffer
    (setq dired-dwim-target t)

    ;; xml
    ;; http://stackoverflow.com/questions/12492/pretty-printing-xml-files-on-emacs
    (defun pretty-print-xml-region (begin end)
      "Pretty format XML markup in region. You need to have nxml-mode
       http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
       this.  The function inserts linebreaks to separate tags that have
       nothing but whitespace between them.  It then indents the markup
       by using nxml's indentation rules."
      (interactive "r")
      (save-excursion
        (nxml-mode)
        (goto-char begin)
        (while (search-forward-regexp "\>[ \\t]*\<" nil t)
          (backward-char) (insert "\n"))
        (indent-region begin end))
      (message "Ah, much better!"))

    ;; face
    ;; http://stackoverflow.com/questions/1242352/get-font-face-under-cursor-in-emacs
    (defun what-face (pos)
      "Get the face name at current pointer position"
      (interactive "d")
      (let ((face (or (get-char-property (point) 'read-face-name)
                      (get-char-property (point) 'face))))
        (if face (message "Face: %s" face) (message "No face at %d" pos))))

    ;; Send email
    (setq send-mail-function 'smtpmail-send-it)
    (setq smtpmail-stream-type 'ssl)
    (setq smtpmail-smtp-server "smtp.gmail.com")
    (setq smtpmail-smtp-service 465)

    ;; mu4e
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")

    (setq mu4e-maildir "~/.mail"
          mu4e-trash-folder "/Trash"
          mu4e-refile-folder "/Archive"
          mu4e-get-mail-command "mbsync -a"
          mu4e-compose-signature "Andrew Apollonsky"
          mu4e-get-mail-command "mbsync gmail"
          mu4e-update-interval nil
          mu4e-compose-signature-auto-include nil
          mu4e-view-show-images t
          mu4e-view-show-addresses t
          mu4e-headers-skip-duplicates t)

    (setq mu4e-maildir-shortcuts
          '(("/gmail/INBOX" . ?g)
            ("/yodle/INBOX" . ?y)))

    ;; ;; Bookmarks
    ;; (setq mu4e-bookmarks
    ;;       `(("flag:unread AND NOT flag:trashed" "Unread messages" ?u)
    ;;         ("date:today..now" "Today's messages" ?t)
    ;;         ("date:7d..now" "Last 7 days" ?w)
    ;;         ("mime:image/*" "Messages with images" ?p)
    ;;         (,(mapconcat 'identity
    ;;                      (mapcar
    ;;                       (lambda (maildir)
    ;;                         (concat "maildir:" (car maildir)))
    ;;                       mu4e-maildir-shortcuts) " OR ")
    ;;          "All inboxes" ?i)))

    (setq mu4e-account-alist
          '(("gmail"
             ;; Under each account, set the account-specific variables you want.
             (mu4e-sent-messages-behavior delete)
             (mu4e-sent-folder "/gmail/.Sent_Mail")
             (mu4e-drafts-folder "/gmail/.Drafts")
             (user-mail-address "anapollonsky@gmail.com")
             (user-full-name "Andrew Apollonsky"))
            ("yodle"
             (mu4e-sent-messages-behavior sent)
             (mu4e-sent-folder "/yodle/Sent_Items")
             (mu4e-drafts-folder "/yodle/Drafts")
             (user-mail-address "Andrew.Apollonsky@yodle.com")
             (user-full-name "Andrew Apollonsky"))))
    (mu4e/mail-account-reset)

    ;; ztree
    (evil-leader/set-key "ozt" 'ztree-dir)
    (evil-leader/set-key "ozd" 'ztree-diff)

    ;; java
    (setq eclim-eclipse-dirs  "/usr/lib/eclipse"
          eclim-executable    "/usr/lib/eclipse/eclim")

    ;; scala
    (setq flycheck-scalastyle-jar "usr/bin/scalastyle")
    (setq-default dotspacemacs-configuration-layers '(
                                                      (scala :variables scala-enable-eldoc-mode t)
                                                      (scala :variables scala-auto-insert-asterisk-in-comments t)
                                                      ))

    ;; clojure
    (setq clojure-enable-fancify-symbols t)

    ;; postgres
    (setq sql-connection-alist
          '((dev (sql-product 'postgres)
                 (sql-port 5432)
                 (sql-server "nyc-devdb1.corp.yodle.com")
                 (sql-user "qa")
                 (sql-password "yodleqa")
                 (sql-database "natpal"))
            (qa1 (sql-product 'postgres)
                 (sql-port 5432)
                 (sql-server "qa1-db1.qa1.yodle.com")
                 (sql-user "qa")
                 (sql-password "yodleqa")
                 (sql-database "natpal"))
            (qa2 (sql-product 'postgres)
                 (sql-port 5432)
                 (sql-server "qa2-db1.qa2.yodle.com")
                 (sql-user "qa")
                 (sql-password "yodleqa")
                 (sql-database "natpal"))
            (qa3 (sql-product 'postgres)
                 (sql-port 5432)
                 (sql-server "qa3-db1.qa3.yodle.com")
                 (sql-user "qa")
                 (sql-password "yodleqa")
                 (sql-database "natpal"))
            (prod (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "yodlecore-reportdb.corp.yodle.com")
                  (sql-user "andrew.apollonsky")
                  (sql-database "natpal"))))

    ;; elasticsearch
    (setq es-default-url "http://dev-elastic-cm2-201.nyc.dev.yodle.com:9200")
    (add-to-list 'auto-mode-alist '("\\.es$" . es-mode))
    (defun es-set-dev()
      "Set elasticsearch host to dev"
      (interactive)
      (let ((elasticsearch-host "http://dev-elastic-cm2-201.nyc.dev.yodle.com:9200"))
        (setq es-default-url elasticsearch-host)
        (setq es-default-base elasticsearch-host)
        (message (concat "Elasticsearch host set to " elasticsearch-host))))

    (defun es-set-prod()
      "Set elasticsearch host to prod"
      (interactive)
      (let ((elasticsearch-host "http://prod-elastic-cm2-101.prod.yodle.com:9200"))
        (setq es-default-url elasticsearch-host)
        (setq es-default-base elasticsearch-host)
        (message (concat "Elasticsearch host set to " elasticsearch-host))))

    ;; jabber
    (setq ssl-program-name "gnutls-cli"
          ssl-program-arguments '("--insecure" "-p" service host)
          ssl-certificate-verification-policy 1)

    (setq jabber-account-list '(
                                ("anapollonsky@chat.facebook.com"
                                 (:network-server . "chat.facebook.com")
                                 (:connection-type . ssl)
                                 )
                                ("anapollonsky@gmail.com"
                                 (:network-server . "talk.google.com")
                                 (:connection-type . ssl)
                                 ;; (:password . "blah")
                                 )

                                ))
    ))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
