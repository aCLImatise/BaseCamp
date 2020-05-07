class: CommandLineTool
id: seq_seq_pan_wga_target.cwl
inputs:
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
- seq-seq-pan-wga
- target
