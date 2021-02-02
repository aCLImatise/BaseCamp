class: CommandLineTool
id: MicroPITA.py_output.txt.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_micro_pita_do_tpy
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
- MicroPITA.py
- output.txt
