class: CommandLineTool
id: adb02_add_alias_to_db.py.cwl
inputs:
- id: in_in_file
  doc: List of accessions
  type: File?
  inputBinding:
    prefix: -infile
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
- adb02_add_alias_to_db.py
