class: CommandLineTool
id: ../../../maf_chop.py.cwl
inputs:
- id: in_length
  doc: ''
  type: long
  inputBinding:
    prefix: --length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_chop.py
