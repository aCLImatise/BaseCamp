class: CommandLineTool
id: smof_sample.cwl
inputs:
- id: in_number
  doc: sample size (default=1)
  type: long
  inputBinding:
    prefix: --number
- id: in_seed
  doc: set random seed (for reproducibility/debugging)
  type: string
  inputBinding:
    prefix: --seed
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- sample
