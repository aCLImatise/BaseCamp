class: CommandLineTool
id: cache_mgr.2.10.3.cwl
inputs:
- id: path_to_cache
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: report
  doc: 'report objects in cache '
  type: boolean
  inputBinding:
    prefix: --report
- id: rep_report
  doc: 'report status of repositories '
  type: boolean
  inputBinding:
    prefix: --rep-report
- id: details
  doc: 'show detailed report '
  type: boolean
  inputBinding:
    prefix: --details
- id: test_zero
  doc: 'test for zero blocks (for report function) '
  type: boolean
  inputBinding:
    prefix: --test-zero
- id: unlock
  doc: 'remove lock-files '
  type: boolean
  inputBinding:
    prefix: --unlock
- id: clear
  doc: 'clear cache '
  type: boolean
  inputBinding:
    prefix: --clear
- id: max_remove
  doc: 'remove until reached that many bytes '
  type: boolean
  inputBinding:
    prefix: --max-remove
- id: remove_dirs
  doc: 'remove directories, not only files '
  type: boolean
  inputBinding:
    prefix: --remove-dirs
- id: enable
  doc: 'enable repository [user/site/rem] '
  type: boolean
  inputBinding:
    prefix: --enable
- id: disable
  doc: 'disable repository [user/site/rem] '
  type: boolean
  inputBinding:
    prefix: --disable
- id: user_repo_name
  doc: 'restrict to this user-repository '
  type: boolean
  inputBinding:
    prefix: --user-repo-name
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- cache-mgr.2.10.3
