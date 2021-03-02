class: CommandLineTool
id: fermi_seqrank.cwl
inputs:
- id: in_fermi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_sort
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fermi
- seqrank
