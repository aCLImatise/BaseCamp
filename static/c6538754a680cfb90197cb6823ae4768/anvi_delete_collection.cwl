class: CommandLineTool
id: anvi_delete_collection.cwl
inputs:
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-collection
