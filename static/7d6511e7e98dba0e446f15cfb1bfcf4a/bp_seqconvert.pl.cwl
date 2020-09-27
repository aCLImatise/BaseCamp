class: CommandLineTool
id: bp_seqconvert.pl.cwl
inputs:
- id: in_to
  doc: ''
  type: string
  inputBinding:
    prefix: --to
- id: in_from
  doc: ''
  type: string
  inputBinding:
    prefix: --from
- id: in_file_dot_in_format
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_seqconvert.pl
