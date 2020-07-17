class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_validator.cwl
inputs:
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
- id: file_dot_vcf_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-validator
