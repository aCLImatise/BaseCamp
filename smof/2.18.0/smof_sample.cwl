class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/smof_sample.cwl
inputs:
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
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- sample
