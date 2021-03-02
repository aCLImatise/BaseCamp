class: CommandLineTool
id: del01_delete_db_entries.py.cwl
inputs:
- id: in_db
  doc: SQLite3 database
  type: long?
  inputBinding:
    prefix: -db
- id: in_name
  doc: Name of BLAST database
  type: string?
  inputBinding:
    prefix: -name
- id: in_alias
  doc: BLAST database is an alias database, default= FALSE
  type: boolean?
  inputBinding:
    prefix: -alias
- id: in_type
  doc: Data type either nucl or prot
  type: string?
  inputBinding:
    prefix: -type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- del01_delete_db_entries.py
