class: CommandLineTool
id: smof_permute.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: word_size
  doc: size of each word (default=1)
  type: long
  inputBinding:
    prefix: --word-size
- id: start_offset
  doc: number of letters to ignore at beginning (default=0)
  type: long
  inputBinding:
    prefix: --start-offset
- id: end_offset
  doc: number of letters to ignore at end (default=0)
  type: long
  inputBinding:
    prefix: --end-offset
- id: seed
  doc: set random seed (for reproducibility/debugging)
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- permute
