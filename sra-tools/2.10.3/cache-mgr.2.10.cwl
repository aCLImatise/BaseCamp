#!/usr/bin/env cwl-runner

baseCommand:
- cache-mgr.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: cache-mgr.2.10.3
inputs:
- doc: ''
  id: path_to_cache
  inputBinding:
    position: 0
  type: File
- doc: 'report objects in cache '
  id: report
  inputBinding:
    prefix: --report
  type: boolean
- doc: 'report status of repositories '
  id: rep_report
  inputBinding:
    prefix: --rep-report
  type: boolean
- doc: 'show detailed report '
  id: details
  inputBinding:
    prefix: --details
  type: boolean
- doc: 'test for zero blocks (for report function) '
  id: test_zero
  inputBinding:
    prefix: --test-zero
  type: boolean
- doc: 'remove lock-files '
  id: unlock
  inputBinding:
    prefix: --unlock
  type: boolean
- doc: 'clear cache '
  id: clear
  inputBinding:
    prefix: --clear
  type: boolean
- doc: 'remove until reached that many bytes '
  id: max_remove
  inputBinding:
    prefix: --max-remove
  type: boolean
- doc: 'remove directories, not only files '
  id: remove_dirs
  inputBinding:
    prefix: --remove-dirs
  type: boolean
- doc: 'enable repository [user/site/rem] '
  id: enable
  inputBinding:
    prefix: --enable
  type: boolean
- doc: 'disable repository [user/site/rem] '
  id: disable
  inputBinding:
    prefix: --disable
  type: boolean
- doc: 'restrict to this user-repository '
  id: user_repo_name
  inputBinding:
    prefix: --user-repo-name
  type: boolean
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
