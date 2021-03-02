class: CommandLineTool
id: seqcoverage_FASTA.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqcoverage
- FASTA
