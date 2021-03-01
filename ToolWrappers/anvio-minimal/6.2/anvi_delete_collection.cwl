class: CommandLineTool
id: anvi_delete_collection.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_collection_name
  doc: Collection name.
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_list_collections
  doc: Show available collections and exit.
  type: boolean?
  inputBinding:
    prefix: --list-collections
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-collection
