class: CommandLineTool
id: bedpetovcf.cwl
inputs:
- id: bed_pe
  doc: 'BEDPE input (default: stdin)'
  type: string
  inputBinding:
    prefix: --bedpe
- id: output
  doc: 'Output VCF to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- bedpetovcf
