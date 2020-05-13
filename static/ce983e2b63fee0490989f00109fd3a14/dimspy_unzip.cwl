class: CommandLineTool
id: dimspy_unzip.cwl
inputs:
- id: input
  doc: file[.zip]
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Directory to write to.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- unzip
