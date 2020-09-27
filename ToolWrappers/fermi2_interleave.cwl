class: CommandLineTool
id: fermi2_interleave.cwl
inputs:
- id: in_fermi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_interleave
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_in_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi2
- interleave
