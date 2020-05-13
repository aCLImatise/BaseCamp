class: CommandLineTool
id: refeature.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: simple_bed
  doc: (for use with --output bed) Create a separate line for each feature in bed
    output (by default, all features of a group are described by a single line).
  type: boolean
  inputBinding:
    prefix: --simplebed
- id: discards
  doc: Write any discarded features to specified file.
  type: string
  inputBinding:
    prefix: --discards
outputs: []
cwlVersion: v1.1
baseCommand:
- refeature
