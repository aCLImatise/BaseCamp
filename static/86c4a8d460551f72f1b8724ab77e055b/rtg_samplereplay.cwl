class: CommandLineTool
id: rtg_samplereplay.cwl
inputs:
- id: in_input
  doc: input VCF containing the sample genotype
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: name for output SDF
  type: string?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: SDF containing the reference genome
  type: string?
  inputBinding:
    prefix: --reference
- id: in_sample
  doc: name of the sample to select from the VCF
  type: string?
  inputBinding:
    prefix: --sample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- samplereplay
