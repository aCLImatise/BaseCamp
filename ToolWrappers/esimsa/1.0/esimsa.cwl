class: CommandLineTool
id: esimsa.cwl
inputs:
- id: in_peak_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_max_charge
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_output
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
- esimsa
