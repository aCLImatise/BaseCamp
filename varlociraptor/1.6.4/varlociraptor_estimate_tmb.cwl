class: CommandLineTool
id: varlociraptor_estimate_tmb.cwl
inputs:
- id: tumor_sample
  doc: 'Name of the tumor sample in the given VCF/BCF. [default: tumor]'
  type: string
  inputBinding:
    prefix: --tumor-sample
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- estimate
- tmb
