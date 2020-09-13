class: CommandLineTool
id: ../../../varscan.cwl
inputs:
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- varscan
