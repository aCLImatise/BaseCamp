#!/usr/bin/env cwl-runner

baseCommand:
- anvi-delete-collection
class: CommandLineTool
cwlVersion: v1.0
id: anvi-delete-collection
inputs:
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Show available collections and exit.
  id: list_collections
  inputBinding:
    prefix: --list-collections
  type: boolean
