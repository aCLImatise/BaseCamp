class: CommandLineTool
id: ../../../fastadiff.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_first
  doc: ''
  type: File
  inputBinding:
    prefix: --first
- id: in_second
  doc: ''
  type: File
  inputBinding:
    prefix: --second
- id: in_ignorecase
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignorecase
- id: in_ambiguity
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ambiguity
- id: in_check_ids
  doc: ''
  type: boolean
  inputBinding:
    prefix: --checkids
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastadiff
