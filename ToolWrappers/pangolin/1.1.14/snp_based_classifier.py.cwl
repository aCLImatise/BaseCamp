class: CommandLineTool
id: snp_based_classifier.py.cwl
inputs:
- id: in_defining_snps
  doc: A fasta file containing the query sequences
  type: File?
  inputBinding:
    prefix: --defining-snps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snp_based_classifier.py
