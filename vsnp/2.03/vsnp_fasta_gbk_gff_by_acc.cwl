class: CommandLineTool
id: vsnp_fasta_gbk_gff_by_acc.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_fasta_gbk_gff_by_acc.py
