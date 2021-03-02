class: CommandLineTool
id: adb01_check_db.py.cwl
inputs:
- id: in_db
  doc: SQLite3 database
  type: long?
  inputBinding:
    prefix: -db
- id: in_name
  doc: Name of alias database
  type: string?
  inputBinding:
    prefix: -name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- adb01_check_db.py
