class: CommandLineTool
id: smof_permute.cwl
inputs:
- id: in_word_size
  doc: size of each word (default=1)
  type: long?
  inputBinding:
    prefix: --word-size
- id: in_start_offset
  doc: number of letters to ignore at beginning (default=0)
  type: long?
  inputBinding:
    prefix: --start-offset
- id: in_end_offset
  doc: number of letters to ignore at end (default=0)
  type: long?
  inputBinding:
    prefix: --end-offset
- id: in_seed
  doc: set random seed (for reproducibility/debugging)
  type: string?
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
hints: []
cwlVersion: v1.1
baseCommand:
- smof
- permute
