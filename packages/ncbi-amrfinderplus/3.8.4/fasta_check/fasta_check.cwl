class: CommandLineTool
id: fasta_check.cwl
inputs:
- id: in_hyphen
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hyphen
- id: in_aa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aa
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_check
