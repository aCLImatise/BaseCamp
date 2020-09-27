class: CommandLineTool
id: plasmidfinder.py.cwl
inputs:
- id: in_tmp
  doc: ''
  type: string
  inputBinding:
    prefix: -tmp
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File[]
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plasmidfinder.py
