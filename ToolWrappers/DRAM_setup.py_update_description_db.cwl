class: CommandLineTool
id: DRAM_setup.py_update_description_db.cwl
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
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- update_description_db
