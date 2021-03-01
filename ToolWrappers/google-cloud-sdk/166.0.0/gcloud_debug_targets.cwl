class: CommandLineTool
id: gcloud_debug_targets.cwl
inputs:
- id: in_targets
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_debugger_dot
  doc: GCLOUD WIDE FLAGS
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List debug targets.
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
- gcloud
- debug
- targets
