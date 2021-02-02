class: CommandLineTool
id: metawatt.cwl
inputs:
- id: in_jar
  doc: ''
  type: long
  inputBinding:
    prefix: -jar
- id: in_java
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
- metawatt
