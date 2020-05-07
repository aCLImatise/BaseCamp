class: CommandLineTool
id: smof_sample.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: number
  doc: sample size (default=1)
  type: string
  inputBinding:
    prefix: --number
- id: seed
  doc: set random seed (for reproducibility/debugging)
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- sample
