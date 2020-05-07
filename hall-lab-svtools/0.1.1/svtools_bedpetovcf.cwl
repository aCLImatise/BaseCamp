class: CommandLineTool
id: svtools_bedpetovcf.cwl
inputs:
- id: bed_pe_to_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- svtools
- bedpetovcf
