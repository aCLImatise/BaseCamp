class: CommandLineTool
id: ../../../lyner_targets.cwl
inputs:
- id: in_targets
  doc: ''
  type: string
  inputBinding:
    prefix: --targets
- id: in_from_file
  doc: ''
  type: File
  inputBinding:
    prefix: --from-file
- id: in_mode
  doc: '[exclude|intersect]'
  type: boolean
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- targets
