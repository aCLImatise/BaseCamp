class: CommandLineTool
id: test_edirect.cwl
inputs:
- id: in_dbs
  doc: Print all database names
  type: boolean?
  inputBinding:
    prefix: -dbs
- id: in_db
  doc: Database name (or "all")
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_fields
  doc: Print field names
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_links
  doc: Print link names
  type: boolean?
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- test-edirect
