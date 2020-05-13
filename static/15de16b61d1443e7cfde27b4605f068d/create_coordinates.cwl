class: CommandLineTool
id: create_coordinates.py.cwl
inputs:
- id: input_vcf
  doc: VCF input
  type: string
  inputBinding:
    prefix: --input_vcf
- id: output
  doc: 'output coordinates to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- create_coordinates.py
