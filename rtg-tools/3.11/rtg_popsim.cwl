class: CommandLineTool
id: rtg_popsim.cwl
inputs:
- id: output
  doc: output VCF file name
  type: File
  inputBinding:
    prefix: --output
- id: reference
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: seed
  doc: seed for the random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- popsim
