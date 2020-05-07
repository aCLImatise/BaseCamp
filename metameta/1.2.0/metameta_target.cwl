class: CommandLineTool
id: metameta_target.cwl
inputs:
- id: use_cond_a
  doc: use conda to automatically install pre-configured packages
  type: boolean
  inputBinding:
    prefix: --use-conda
- id: cores
  doc: number of cores
  type: boolean
  inputBinding:
    prefix: --cores
- id: keep_going
  doc: go on with independent jobs if a job fails
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: dry_run
  doc: do not execute anything
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: print_shell_cmds
  doc: print out the shell commands that will be executed
  type: boolean
  inputBinding:
    prefix: --printshellcmds
- id: timestamp
  doc: add a timestamp to all logging output
  type: boolean
  inputBinding:
    prefix: --timestamp
outputs: []
cwlVersion: v1.1
baseCommand:
- metameta
- target
