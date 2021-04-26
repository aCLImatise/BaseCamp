class: CommandLineTool
id: DRAM_setup.py_version.cwl
inputs:
- id: in_dram_setup_do_tpy
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
- DRAM-setup.py
- version
