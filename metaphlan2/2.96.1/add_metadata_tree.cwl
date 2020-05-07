class: CommandLineTool
id: add_metadata_tree.py.cwl
inputs:
- id: string_to_remove
  doc: string to be removed in the tree node names
  type: string
  inputBinding:
    prefix: --string_to_remove
- id: metadata_s
  doc: 'The metadata fields that you want to add. Default: add all metadata from the
    first line.'
  type: string[]
  inputBinding:
    prefix: --metadatas
outputs: []
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
