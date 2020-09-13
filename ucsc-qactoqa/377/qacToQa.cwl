class: CommandLineTool
id: ../../../qacToQa.cwl
inputs:
- id: in_name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qacToQa
