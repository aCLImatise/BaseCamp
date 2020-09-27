class: CommandLineTool
id: metameta_target.cwl
inputs:
- id: in_use_cond_a
  doc: use conda to automatically install pre-configured packages
  type: boolean
  inputBinding:
    prefix: --use-conda
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
- metameta
- target
