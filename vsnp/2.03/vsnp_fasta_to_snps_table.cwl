class: CommandLineTool
id: vsnp_fasta_to_snps_table.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_fasta_to_snps_table.py
