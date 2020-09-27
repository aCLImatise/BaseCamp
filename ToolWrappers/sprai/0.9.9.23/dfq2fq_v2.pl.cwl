class: CommandLineTool
id: dfq2fq_v2.pl.cwl
inputs:
- id: in_valid_depth
  doc: "--valid_read_length int\n--finish (chops low depth (<valid_depth) regions)\n\
    --check (outputs not broken dfq records and discard the rest ('broken' was defined\
    \ in this code))\n--pnp (outputs confidently corrected reads only ('confident'\
    \ was defined in this code))\n--list (outputs confidently corrected read names)\n\
    --nlist (outputs NOT confidently corrected read names)]\n"
  type: long
  inputBinding:
    prefix: --valid_depth
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_dfq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dfq2fq_v2.pl
