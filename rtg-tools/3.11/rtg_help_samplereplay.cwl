class: CommandLineTool
id: rtg_help_samplereplay.cwl
inputs:
- id: input
  doc: input VCF containing the sample genotype
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: name for output SDF
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: sample
  doc: name of the sample to select from the VCF
  type: string
  inputBinding:
    prefix: --sample
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- samplereplay
