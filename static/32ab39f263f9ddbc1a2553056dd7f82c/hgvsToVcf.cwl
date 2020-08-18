class: CommandLineTool
id: ../../../hgvsToVcf.cwl
inputs:
- id: no_left_shift
  doc: Don't do the VCF-conventional left shifting of ambiguous placements
  type: boolean
  inputBinding:
    prefix: -noLeftShift
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_hgvs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgvsToVcf
