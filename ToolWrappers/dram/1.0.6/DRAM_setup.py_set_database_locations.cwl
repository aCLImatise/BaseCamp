class: CommandLineTool
id: DRAM_setup.py_set_database_locations.cwl
inputs:
- id: in_kegg_db_loc
  doc: ''
  type: string
  inputBinding:
    prefix: --kegg_db_loc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- set_database_locations
