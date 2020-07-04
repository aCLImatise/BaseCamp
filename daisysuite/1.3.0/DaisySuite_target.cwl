class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DaisySuite_target.cwl
inputs:
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
- id: config_file
  doc: ''
  type: File
  inputBinding:
    prefix: --configfile
- id: daisy_suite
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: snake_make
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- DaisySuite
- target
