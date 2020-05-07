class: CommandLineTool
id: artic_mask_maskfile.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mask_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_mask
- maskfile
