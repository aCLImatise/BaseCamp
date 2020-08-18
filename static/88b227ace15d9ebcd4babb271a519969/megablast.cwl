class: CommandLineTool
id: ../../../megablast.cwl
inputs:
- id: alignment_view_options
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: type_of_output
  doc: 'Type of output:'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- megablast
