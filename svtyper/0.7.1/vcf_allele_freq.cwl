class: CommandLineTool
id: vcf_allele_freq.py.cwl
inputs:
- id: vcf
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_allele_freq.py
