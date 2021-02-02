class: CommandLineTool
id: ../../../makehmmerdb.cwl
inputs:
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_bin_length
  doc: ': bin length (power of 2;  32<=b<=4096)  [256]'
  type: long
  inputBinding:
    prefix: --bin_length
- id: in_sa_freq
  doc: ': suffix array sample rate (power of 2)  [8]'
  type: long
  inputBinding:
    prefix: --sa_freq
- id: in_block_size
  doc: ': input sequence broken into blocks this size (Mbases)  [50]'
  type: long
  inputBinding:
    prefix: --block_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makehmmerdb
