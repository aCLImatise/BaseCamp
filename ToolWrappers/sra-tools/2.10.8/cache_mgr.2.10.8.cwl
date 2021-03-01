class: CommandLineTool
id: cache_mgr.2.10.8.cwl
inputs:
- id: in_report
  doc: report objects in cache
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_rep_report
  doc: report status of repositories
  type: boolean?
  inputBinding:
    prefix: --rep-report
- id: in_details
  doc: show detailed report
  type: boolean?
  inputBinding:
    prefix: --details
- id: in_test_zero
  doc: test for zero blocks (for report function)
  type: boolean?
  inputBinding:
    prefix: --test-zero
- id: in_unlock
  doc: remove lock-files
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_clear
  doc: clear cache
  type: boolean?
  inputBinding:
    prefix: --clear
- id: in_max_remove
  doc: remove until reached that many bytes
  type: boolean?
  inputBinding:
    prefix: --max-remove
- id: in_remove_dirs
  doc: remove directories, not only files
  type: boolean?
  inputBinding:
    prefix: --remove-dirs
- id: in_enable
  doc: enable repository [user/site/rem]
  type: boolean?
  inputBinding:
    prefix: --enable
- id: in_disable
  doc: disable repository [user/site/rem]
  type: boolean?
  inputBinding:
    prefix: --disable
- id: in_user_repo_name
  doc: restrict to this user-repository
  type: boolean?
  inputBinding:
    prefix: --user-repo-name
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'cache-mgr.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cache-mgr.2.10.8
