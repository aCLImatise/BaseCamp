class: CommandLineTool
id: makehmmerdb.cwl
inputs:
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: bin_length
  doc: ': bin length (power of 2;  32<=b<=4096)  [256]'
  type: string
  inputBinding:
    prefix: --bin_length
- id: sa_freq
  doc: ': suffix array sample rate (power of 2)  [8]'
  type: string
  inputBinding:
    prefix: --sa_freq
- id: block_size
  doc: ': input sequence broken into blocks this size (Mbases)  [50]'
  type: string
  inputBinding:
    prefix: --block_size
outputs: []
cwlVersion: v1.1
baseCommand:
- makehmmerdb
