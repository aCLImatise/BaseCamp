class: CommandLineTool
id: seq_seq_pan_wga_target.cwl
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
- id: in_config
  doc: ''
  type: File?
  inputBinding:
    prefix: --config
- id: in_seq_seq_pan_wga
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq-seq-pan-wga
- target
