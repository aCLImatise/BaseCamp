class: CommandLineTool
id: WisecondorX.cwl
inputs:
- id: in_loglevel
  doc: ''
  type: string
  inputBinding:
    prefix: --loglevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- WisecondorX
