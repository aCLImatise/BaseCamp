class: CommandLineTool
id: qcat_roc.cwl
inputs:
- id: in_fast_q
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcat-roc
