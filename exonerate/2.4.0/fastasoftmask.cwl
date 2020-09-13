class: CommandLineTool
id: ../../../fastasoftmask.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_unmasked
  doc: ''
  type: File
  inputBinding:
    prefix: --unmasked
- id: in_masked
  doc: ''
  type: File
  inputBinding:
    prefix: --masked
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastasoftmask
