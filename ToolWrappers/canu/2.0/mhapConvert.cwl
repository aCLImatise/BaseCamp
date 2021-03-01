class: CommandLineTool
id: mhapConvert.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -S
- id: in_input_do_tm_hap
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mhapConvert
