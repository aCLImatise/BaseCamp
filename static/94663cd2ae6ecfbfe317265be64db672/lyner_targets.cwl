class: CommandLineTool
id: lyner_targets.cwl
inputs:
- id: in_from_file
  doc: '[exclude|intersect]'
  type: File?
  inputBinding:
    prefix: --from-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- targets
