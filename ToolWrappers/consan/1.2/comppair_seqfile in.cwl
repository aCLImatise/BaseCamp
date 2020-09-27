class: CommandLineTool
id: comppair_seqfile in.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comppair
- seqfile in
