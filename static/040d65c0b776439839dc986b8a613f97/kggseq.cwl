class: CommandLineTool
id: kggseq.cwl
inputs:
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_x_mx_on_eg
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Xmx1g
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_param_dot_txt
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
- kggseq
