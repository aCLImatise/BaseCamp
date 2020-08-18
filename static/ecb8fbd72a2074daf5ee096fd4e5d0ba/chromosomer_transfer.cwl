class: CommandLineTool
id: ../../../chromosomer_transfer.cwl
inputs:
- id: format
  doc: 'the format of a file of annotated features (bed, gff3 or vcf) (default: bed)'
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer
