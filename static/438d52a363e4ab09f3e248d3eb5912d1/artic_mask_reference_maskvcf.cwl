class: CommandLineTool
id: artic_mask_reference_maskvcf.cwl
inputs:
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_mask
- reference
- maskvcf
