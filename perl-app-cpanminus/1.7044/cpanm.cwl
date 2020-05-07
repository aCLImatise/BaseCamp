class: CommandLineTool
id: cpanm.cwl
inputs:
- id: verbose
  doc: Turns on chatty output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Turns off the most output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: interactive
  doc: 'Turns on interactive configure (required for Task:: modules)'
  type: boolean
  inputBinding:
    prefix: --interactive
- id: force
  doc: force install
  type: boolean
  inputBinding:
    prefix: --force
- id: not_est
  doc: Do not run unit tests
  type: boolean
  inputBinding:
    prefix: --notest
- id: test_only
  doc: Run tests only, do not install
  type: boolean
  inputBinding:
    prefix: --test-only
- id: sudo
  doc: sudo to run install commands
  type: boolean
  inputBinding:
    prefix: --sudo
- id: install_deps
  doc: Only install dependencies
  type: boolean
  inputBinding:
    prefix: --installdeps
- id: show_deps
  doc: Only display direct dependencies
  type: boolean
  inputBinding:
    prefix: --showdeps
- id: reinstall
  doc: Reinstall the distribution even if you already have the latest version installed
  type: boolean
  inputBinding:
    prefix: --reinstall
- id: mirror
  doc: Specify the base URL for the mirror (e.g. http://cpan.cpantesters.org/)
  type: boolean
  inputBinding:
    prefix: --mirror
- id: mirror_only
  doc: Use the mirror's index file instead of the CPAN Meta DB
  type: boolean
  inputBinding:
    prefix: --mirror-only
- id: from
  doc: Use only this mirror base URL and its index file
  type: boolean
  inputBinding:
    prefix: --from
- id: prompt
  doc: Prompt when configure/build/test fails
  type: boolean
  inputBinding:
    prefix: --prompt
- id: local_lib
  doc: Specify the install base to install modules
  type: boolean
  inputBinding:
    prefix: --local-lib
- id: local_lib_contained
  doc: Specify the install base to install all non-core modules
  type: boolean
  inputBinding:
    prefix: --local-lib-contained
- id: self_contained
  doc: Install all non-core modules, even if they're already installed.
  type: boolean
  inputBinding:
    prefix: --self-contained
- id: auto_cleanup
  doc: Number of days that cpanm's work directories expire in. Defaults to 7
  type: boolean
  inputBinding:
    prefix: --auto-cleanup
- id: self_upgrade
  doc: upgrades itself
  type: boolean
  inputBinding:
    prefix: --self-upgrade
- id: info
  doc: Displays distribution info on CPAN
  type: boolean
  inputBinding:
    prefix: --info
- id: look
  doc: Opens the distribution with your SHELL
  type: boolean
  inputBinding:
    prefix: --look
- id: uninstall
  doc: Uninstalls the modules (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: --uninstall
outputs: []
cwlVersion: v1.1
baseCommand:
- cpanm
