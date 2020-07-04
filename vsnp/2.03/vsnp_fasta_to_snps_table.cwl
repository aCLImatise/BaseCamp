class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_fasta_to_snps_table.py.cwl
inputs:
- id: fast_a
  doc: provide an aligned fasta
  type: string
  inputBinding:
    prefix: --fasta
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_fasta_to_snps_table.py
