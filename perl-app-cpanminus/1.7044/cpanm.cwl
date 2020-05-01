#!/usr/bin/env cwl-runner

baseCommand:
- cpanm
class: CommandLineTool
cwlVersion: v1.0
id: cpanm
inputs:
- doc: Turns on chatty output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Turns off the most output
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Turns on interactive configure (required for Task:: modules)'
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: force install
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Do not run unit tests
  id: not_est
  inputBinding:
    prefix: --notest
  type: boolean
- doc: Run tests only, do not install
  id: test_only
  inputBinding:
    prefix: --test-only
  type: boolean
- doc: sudo to run install commands
  id: sudo
  inputBinding:
    prefix: --sudo
  type: boolean
- doc: Only install dependencies
  id: install_deps
  inputBinding:
    prefix: --installdeps
  type: boolean
- doc: Only display direct dependencies
  id: show_deps
  inputBinding:
    prefix: --showdeps
  type: boolean
- doc: Reinstall the distribution even if you already have the latest version installed
  id: reinstall
  inputBinding:
    prefix: --reinstall
  type: boolean
- doc: Specify the base URL for the mirror (e.g. http://cpan.cpantesters.org/)
  id: mirror
  inputBinding:
    prefix: --mirror
  type: boolean
- doc: Use the mirror's index file instead of the CPAN Meta DB
  id: mirror_only
  inputBinding:
    prefix: --mirror-only
  type: boolean
- doc: Use only this mirror base URL and its index file
  id: from
  inputBinding:
    prefix: --from
  type: boolean
- doc: Prompt when configure/build/test fails
  id: prompt
  inputBinding:
    prefix: --prompt
  type: boolean
- doc: Specify the install base to install modules
  id: local_lib
  inputBinding:
    prefix: --local-lib
  type: boolean
- doc: Specify the install base to install all non-core modules
  id: local_lib_contained
  inputBinding:
    prefix: --local-lib-contained
  type: boolean
- doc: Install all non-core modules, even if they're already installed.
  id: self_contained
  inputBinding:
    prefix: --self-contained
  type: boolean
- doc: Number of days that cpanm's work directories expire in. Defaults to 7
  id: auto_cleanup
  inputBinding:
    prefix: --auto-cleanup
  type: boolean
- doc: upgrades itself
  id: self_upgrade
  inputBinding:
    prefix: --self-upgrade
  type: boolean
- doc: Displays distribution info on CPAN
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: Opens the distribution with your SHELL
  id: look
  inputBinding:
    prefix: --look
  type: boolean
- doc: Uninstalls the modules (EXPERIMENTAL)
  id: uninstall
  inputBinding:
    prefix: --uninstall
  type: boolean
