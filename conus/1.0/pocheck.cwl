class: CommandLineTool
id: ../../../pocheck.cwl
inputs:
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pocheck
