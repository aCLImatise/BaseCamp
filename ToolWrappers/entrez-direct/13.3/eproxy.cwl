class: CommandLineTool
id: eproxy.cwl
inputs:
- id: in_alias
  doc: File of aliases
  type: boolean
  inputBinding:
    prefix: -alias
- id: in_pipe
  doc: Read aliases from stdin
  type: boolean
  inputBinding:
    prefix: -pipe
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eproxy
