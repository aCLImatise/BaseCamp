class: CommandLineTool
id: bioprov.cwl
inputs:
- id: in_show_config
  doc: Show location of config file.
  type: boolean?
  inputBinding:
    prefix: --show_config
- id: in_show_prov_store
  doc: Show location of ProvStore credentials file.
  type: boolean?
  inputBinding:
    prefix: --show_provstore
- id: in_create_prov_store
  doc: Create ProvStore file credentials file.
  type: boolean?
  inputBinding:
    prefix: --create_provstore
- id: in_show_db
  doc: Show location of database file.
  type: boolean?
  inputBinding:
    prefix: --show_db
- id: in_clear_db
  doc: Clears all records in database.
  type: boolean?
  inputBinding:
    prefix: --clear_db
- id: in_list
  doc: List Projects in the BioProv database.
  type: boolean?
  inputBinding:
    prefix: --list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioprov:0.1.22--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bioprov
