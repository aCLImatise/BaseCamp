class: CommandLineTool
id: vcf_validator.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf_gz
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: duplicates
  doc: Warn about duplicate positions.
  type: boolean
  inputBinding:
    prefix: --duplicates
- id: unique_messages
  doc: Output all messages only once.
  type: boolean
  inputBinding:
    prefix: --unique-messages
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-validator
