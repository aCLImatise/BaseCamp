class: CommandLineTool
id: vsnp_fasta_to_snps_table.py.cwl
inputs:
- id: in_fast_a
  doc: provide an aligned fasta
  type: string
  inputBinding:
    prefix: --fasta
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_prog
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
- vsnp_fasta_to_snps_table.py
