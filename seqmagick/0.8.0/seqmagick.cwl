class: CommandLineTool
id: ../../../seqmagick.cwl
inputs:
- id: in_verbose
  doc: Be more verbose. Specify -vv or -vvv for even more
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Suppress output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqmagick
