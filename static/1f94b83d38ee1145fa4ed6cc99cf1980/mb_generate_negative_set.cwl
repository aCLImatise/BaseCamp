class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_generate_negative_set.cwl
inputs:
- id: number
  doc: set number or random drawings
  type: string
  inputBinding:
    prefix: --number
- id: width
  doc: set number or nt +/- selected position
  type: string
  inputBinding:
    prefix: --width
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-generate-negative-set
