class: CommandLineTool
id: mdb03_add_to_db.py.cwl
inputs:
- id: in_in_file
  doc: Input fasta file
  type: File?
  inputBinding:
    prefix: -infile
- id: in_db
  doc: SQLite3 database
  type: long?
  inputBinding:
    prefix: -db
- id: in_name
  doc: Name of fasta file
  type: File?
  inputBinding:
    prefix: -name
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
- mdb03_add_to_db.py
