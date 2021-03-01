class: CommandLineTool
id: cnvkit.py_depths..cwl
inputs:
- id: in_cnv_kit_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- depths.
