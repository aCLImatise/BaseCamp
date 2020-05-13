class: CommandLineTool
id: hgvsToVcf.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_hgvs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: no_left_shift
  doc: Don't do the VCF-conventional left shifting of ambiguous placements
  type: boolean
  inputBinding:
    prefix: -noLeftShift
outputs: []
cwlVersion: v1.1
baseCommand:
- hgvsToVcf
