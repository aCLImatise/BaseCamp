class: CommandLineTool
id: vcf_allele_freq.py.cwl
inputs:
- id: in_vcf
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf_allele_freq.py
