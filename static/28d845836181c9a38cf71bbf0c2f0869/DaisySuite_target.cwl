class: CommandLineTool
id: DaisySuite_target.cwl
inputs:
- id: in_cores
  doc: number of cores
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_keep_going
  doc: go on with independent jobs if a job fails
  type: boolean?
  inputBinding:
    prefix: --keep-going
- id: in_dry_run
  doc: do not execute anything
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_print_shell_cmds
  doc: print out the shell commands that will be executed
  type: boolean?
  inputBinding:
    prefix: --printshellcmds
- id: in_config_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --configfile
- id: in_daisy_suite
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snake_make
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DaisySuite
- target
