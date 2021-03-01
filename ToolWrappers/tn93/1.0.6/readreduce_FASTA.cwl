class: CommandLineTool
id: readreduce_FASTA.cwl
inputs:
- id: in_j
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
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
- readreduce
- FASTA
