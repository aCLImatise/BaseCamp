class: CommandLineTool
id: prophane_disk..cwl
inputs:
- id: in_list_dbs
  doc: "print list of configured databases\ndatabases are looked up in 'db_base_dir'\
    \ configured in:\n/usr/local/opt/prophane/general_config.yaml"
  type: boolean
  inputBinding:
    prefix: --list-dbs
- id: in_list_styles
  doc: "print list of available input file styles\nstyles are looked up in the following\
    \ folder:\n/usr/local/opt/prophane/styles"
  type: boolean
  inputBinding:
    prefix: --list-styles
- id: in_db_maintenance
  doc: "trigger database maintenance scripts\nwill migrate database structure from\
    \ deprecated structure to most recent"
  type: boolean
  inputBinding:
    prefix: --db-maintenance
- id: in_cores
  doc: number of cores
  type: boolean
  inputBinding:
    prefix: --cores
- id: in_keep_going
  doc: go on with independent jobs if a job fails
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: in_dry_run
  doc: do not execute anything
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_print_shell_cmds
  doc: print out the shell commands that will be executed
  type: boolean
  inputBinding:
    prefix: --printshellcmds
- id: in_timestamp
  doc: add a timestamp to all logging output
  type: boolean
  inputBinding:
    prefix: --timestamp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophane
- disk.
