class: CommandLineTool
id: megagta_translate.cwl
inputs:
- id: in_translate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nucl_seq
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
- megagta
- translate
