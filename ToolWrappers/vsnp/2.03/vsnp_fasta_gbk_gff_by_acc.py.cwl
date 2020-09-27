class: CommandLineTool
id: vsnp_fasta_gbk_gff_by_acc.py.cwl
inputs:
- id: in_accession
  doc: NCBI chromosome number
  type: long
  inputBinding:
    prefix: --accession
- id: in_fast_a
  doc: get FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_gbk
  doc: get gbk file
  type: boolean
  inputBinding:
    prefix: --gbk
- id: in_gff
  doc: get gff file
  type: boolean
  inputBinding:
    prefix: --gff
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
- id: in_fast_a_gbk_gff_by_acc_do_tpy
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
- vsnp_fasta_gbk_gff_by_acc.py
