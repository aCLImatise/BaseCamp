class: CommandLineTool
id: quasitools_dnds.cwl
inputs:
- id: in_output
  doc: "--help                 Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_offset
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
- dnds
