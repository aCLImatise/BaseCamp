class: CommandLineTool
id: checkv_repeats.cwl
inputs:
- id: in_min_tr_len
  doc: Min length of TR
  type: long?
  inputBinding:
    prefix: --min_tr_len
- id: in_quiet
  doc: Suppress logging messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkv
- repeats
