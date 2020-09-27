class: CommandLineTool
id: vcf_group_multiline.py.cwl
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
cwlVersion: v1.1
baseCommand:
- vcf_group_multiline.py
