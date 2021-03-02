class: CommandLineTool
id: ncbisort.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -T
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_tc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -tc
- id: in_cmu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -cmu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ncbisort
