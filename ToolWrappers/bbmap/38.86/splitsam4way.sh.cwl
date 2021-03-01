class: CommandLineTool
id: splitsam4way.sh.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_plus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_minus
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_chimeric
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_out_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitsam4way.sh
