class: CommandLineTool
id: artic_mask_reference_maskfile_output.cwl
inputs:
- id: mask_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_mask
- reference
- maskfile
- output
