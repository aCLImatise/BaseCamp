class: CommandLineTool
id: cnvkit.py_regions..cwl
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
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- regions.
