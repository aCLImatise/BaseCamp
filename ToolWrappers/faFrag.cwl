class: CommandLineTool
id: faFrag.cwl
inputs:
- id: in_mixed
  doc: '- preserve mixed-case in FASTA file'
  type: boolean
  inputBinding:
    prefix: -mixed
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_end
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
- faFrag
