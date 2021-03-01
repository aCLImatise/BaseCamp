class: CommandLineTool
id: anvi_delete_collection.cwl
inputs:
- id: in_profile_db
  doc: "Anvi'o profile database (default: None)"
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_collection_name
  doc: 'Collection name. (default: None)'
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_list_collections
  doc: 'Show available collections and exit. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-collections
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-delete-collection
