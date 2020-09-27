class: CommandLineTool
id: DRAM_v.py_annotate.cwl
inputs:
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DRAM-v.py
- annotate
