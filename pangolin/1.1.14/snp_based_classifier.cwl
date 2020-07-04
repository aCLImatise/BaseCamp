class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snp_based_classifier.py.cwl
inputs:
- id: snps
  doc: ''
  type: string
  inputBinding:
    prefix: -snps
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- snp_based_classifier.py
