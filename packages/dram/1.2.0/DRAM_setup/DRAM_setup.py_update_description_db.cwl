class: CommandLineTool
id: DRAM_setup.py_update_description_db.cwl
inputs:
- id: in_output_loc
  doc: "Location to store desciption database, will be stored\nin location set in\
    \ CONFIG if not given (default: None)\n"
  type: string?
  inputBinding:
    prefix: --output_loc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- update_description_db
