class: CommandLineTool
id: snp_based_classifier.py.cwl
inputs:
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_snps
  doc: ''
  type: string
  inputBinding:
    prefix: -snps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snp_based_classifier.py
