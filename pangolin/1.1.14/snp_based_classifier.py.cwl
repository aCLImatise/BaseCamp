class: CommandLineTool
id: ../../../snp_based_classifier.py.cwl
inputs:
- id: in_defining_snps
  doc: ''
  type: string
  inputBinding:
    prefix: --defining-snps
- id: in_query_snps
  doc: A fasta file containing the query sequences
  type: File
  inputBinding:
    prefix: --query-snps
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snp_based_classifier.py
