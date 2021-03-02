class: CommandLineTool
id: panpasco_distance_disk..cwl
inputs:
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
- id: in_timestamp
  doc: add a timestamp to all logging output
  type: boolean?
  inputBinding:
    prefix: --timestamp
- id: in_jobs
  doc: use at most N cores in parallel
  type: string?
  inputBinding:
    prefix: --jobs
- id: in_config_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --configfile
- id: in_pan_pasco_distance
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
- panpasco-distance
- disk.
