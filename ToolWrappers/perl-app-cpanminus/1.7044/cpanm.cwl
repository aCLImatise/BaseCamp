class: CommandLineTool
id: cpanm.cwl
inputs:
- id: in_verbose
  doc: Turns on chatty output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Turns off the most output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_interactive
  doc: 'Turns on interactive configure (required for Task:: modules)'
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_force
  doc: force install
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_not_est
  doc: Do not run unit tests
  type: boolean?
  inputBinding:
    prefix: --notest
- id: in_test_only
  doc: Run tests only, do not install
  type: boolean?
  inputBinding:
    prefix: --test-only
- id: in_sudo
  doc: sudo to run install commands
  type: boolean?
  inputBinding:
    prefix: --sudo
- id: in_install_deps
  doc: Only install dependencies
  type: boolean?
  inputBinding:
    prefix: --installdeps
- id: in_show_deps
  doc: Only display direct dependencies
  type: boolean?
  inputBinding:
    prefix: --showdeps
- id: in_reinstall
  doc: Reinstall the distribution even if you already have the latest version installed
  type: boolean?
  inputBinding:
    prefix: --reinstall
- id: in_mirror
  doc: Specify the base URL for the mirror (e.g. http://cpan.cpantesters.org/)
  type: boolean?
  inputBinding:
    prefix: --mirror
- id: in_mirror_only
  doc: Use the mirror's index file instead of the CPAN Meta DB
  type: boolean?
  inputBinding:
    prefix: --mirror-only
- id: in_from
  doc: Use only this mirror base URL and its index file
  type: boolean?
  inputBinding:
    prefix: --from
- id: in_prompt
  doc: Prompt when configure/build/test fails
  type: boolean?
  inputBinding:
    prefix: --prompt
- id: in_local_lib
  doc: Specify the install base to install modules
  type: boolean?
  inputBinding:
    prefix: --local-lib
- id: in_local_lib_contained
  doc: Specify the install base to install all non-core modules
  type: boolean?
  inputBinding:
    prefix: --local-lib-contained
- id: in_self_contained
  doc: Install all non-core modules, even if they're already installed.
  type: boolean?
  inputBinding:
    prefix: --self-contained
- id: in_auto_cleanup
  doc: Number of days that cpanm's work directories expire in. Defaults to 7
  type: boolean?
  inputBinding:
    prefix: --auto-cleanup
- id: in_self_upgrade
  doc: upgrades itself
  type: boolean?
  inputBinding:
    prefix: --self-upgrade
- id: in_info
  doc: Displays distribution info on CPAN
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_look
  doc: Opens the distribution with your SHELL
  type: boolean?
  inputBinding:
    prefix: --look
- id: in_uninstall
  doc: Uninstalls the modules (EXPERIMENTAL)
  type: boolean?
  inputBinding:
    prefix: --uninstall
- id: in_module
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cpanm
