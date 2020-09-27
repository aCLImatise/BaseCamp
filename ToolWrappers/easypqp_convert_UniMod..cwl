class: CommandLineTool
id: easypqp_convert_UniMod..cwl
inputs:
- id: in_easy_pqp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert
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
- easypqp
- convert
- UniMod.
