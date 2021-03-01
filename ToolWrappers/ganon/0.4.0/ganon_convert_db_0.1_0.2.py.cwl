class: CommandLineTool
id: ganon_convert_db_0.1_0.2.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon-convert-db-0.1-0.2.py
