class: CommandLineTool
id: NBICseq_norm.pl.cwl
inputs:
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
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
- NBICseq-norm.pl
