class: CommandLineTool
id: bp_oligo_count.pl.cwl
inputs:
- id: in_lslash_length
  doc: ''
  type: long
  inputBinding:
    prefix: -l/--length
- id: in_h_slash_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_oligo_count
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_oligo_count.pl
