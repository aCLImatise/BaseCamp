class: CommandLineTool
id: gem_install.cwl
inputs:
- id: in_platform
  doc: Specify the platform of gem to install
  type: string
  inputBinding:
    prefix: --platform
- id: in__updatesources_update
  doc: ', --[no-]update-sources        Update local source cache'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_install_dir
  doc: Gem repository directory to get installed
  type: Directory
  inputBinding:
    prefix: --install-dir
- id: in_build_root
  doc: "Temporary installation root. Useful for building\npackages. Do not use this\
    \ when installing remote gems."
  type: string
  inputBinding:
    prefix: --build-root
- id: in_vendor
  doc: "Install gem into the vendor directory.\nOnly for use by gem repackagers."
  type: boolean
  inputBinding:
    prefix: --vendor
- id: in_no_document
  doc: Disable documentation generation
  type: boolean
  inputBinding:
    prefix: --no-document
- id: in__envshebang_rewrite
  doc: ", --[no-]env-shebang           Rewrite the shebang line on installed\nscripts\
    \ to use /usr/bin/env"
  type: boolean
  inputBinding:
    prefix: -E
- id: in__force_force
  doc: ', --[no-]force                 Force gem to install, bypassing dependency'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_trust_policy
  doc: Specify gem trust policy
  type: string
  inputBinding:
    prefix: --trust-policy
- id: in_ignore_dependencies
  doc: Do not install any required dependent gems
  type: boolean
  inputBinding:
    prefix: --ignore-dependencies
- id: in_development
  doc: Install additional development
  type: boolean
  inputBinding:
    prefix: --development
- id: in_conservative
  doc: "Don't attempt to upgrade gems already\nmeeting version requirement"
  type: boolean
  inputBinding:
    prefix: --conservative
- id: in_minimal_deps
  doc: "Don't upgrade any dependencies that already\nmeet version requirements"
  type: boolean
  inputBinding:
    prefix: --minimal-deps
- id: in_file
  doc: "[FILE]                Read from a gem dependencies API file and\ninstall the\
    \ listed gems"
  type: boolean
  inputBinding:
    prefix: --file
- id: in_without
  doc: "Omit the named groups (comma separated)\nwhen installing from a gem dependencies\n\
    file"
  type: File
  inputBinding:
    prefix: --without
- id: in_default
  doc: "Add the gem's full specification to\nspecifications/default and extract only\
    \ its bin"
  type: boolean
  inputBinding:
    prefix: --default
- id: in_explain
  doc: "Rather than install the gems, indicate which would\nbe installed"
  type: boolean
  inputBinding:
    prefix: --explain
- id: in_local
  doc: Restrict operations to the LOCAL domain
  type: boolean
  inputBinding:
    prefix: --local
- id: in_remote
  doc: Restrict operations to the REMOTE domain
  type: boolean
  inputBinding:
    prefix: --remote
- id: in_both
  doc: Allow LOCAL and REMOTE operations
  type: boolean
  inputBinding:
    prefix: --both
- id: in_bulk_threshold
  doc: "Threshold for switching to bulk\nsynchronization (default 1000)"
  type: long
  inputBinding:
    prefix: --bulk-threshold
- id: in_clear_sources
  doc: Clear the gem sources
  type: boolean
  inputBinding:
    prefix: --clear-sources
- id: in_source
  doc: Append URL to list of remote gem sources
  type: string
  inputBinding:
    prefix: --source
- id: in__use_proxy
  doc: ', --[no-]http-proxy [URL]      Use HTTP proxy for remote operations'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__verbose_set
  doc: ', --[no-]verbose               Set the verbose level of output'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_quiet
  doc: Silence commands
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_config_file
  doc: Use this config file instead of default
  type: File
  inputBinding:
    prefix: --config-file
- id: in_backtrace
  doc: Show stack backtrace on errors
  type: boolean
  inputBinding:
    prefix: --backtrace
- id: in_debug
  doc: Turn on Ruby debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_gems
  doc: -n, --bindir DIR                 Directory where binary files are
  type: string
  inputBinding:
    position: 0
- id: in_located
  doc: --[no-]document [TYPES]      Generate documentation for installed gems
  type: string
  inputBinding:
    position: 1
- id: in_generate_dot
  doc: 'For example: rdoc,ri'
  type: string
  inputBinding:
    position: 0
- id: in_checks
  doc: -w, --[no-]wrappers              Use bin wrappers for executables
  type: string
  inputBinding:
    position: 1
- id: in_foo_exec_one_eight
  doc: --[no-]user-install          Install in user's home directory instead
  type: long
  inputBinding:
    position: 0
- id: in_dependencies
  doc: --development-all            Install development dependencies for all
  type: string
  inputBinding:
    position: 0
- id: in_gem_name
  doc: name of gem to install
  type: string
  inputBinding:
    position: 0
- id: in_repository_dot
  doc: You may need to specify the path to the library's headers and
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gem
- install
