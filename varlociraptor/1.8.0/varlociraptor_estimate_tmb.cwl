class: CommandLineTool
id: ../../../varlociraptor_estimate_tmb.cwl
inputs:
- id: tumor_sample
  doc: 'Name of the tumor sample in the given VCF/BCF. [default: tumor]'
  type: string
  inputBinding:
    prefix: --tumor-sample
- id: coding_genome_size
  doc: ''
  type: string
  inputBinding:
    prefix: --coding-genome-size
- id: somatic_tumor_events
  doc: ''
  type: string
  inputBinding:
    prefix: --somatic-tumor-events
- id: calls_dot_bcf_vertical_line_vg_two_svg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tmb_dot_svg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- estimate
- tmb
