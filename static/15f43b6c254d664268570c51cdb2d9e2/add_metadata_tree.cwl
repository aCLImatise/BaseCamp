class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_metadata_tree.py.cwl
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
- id: t
  doc: ''
  type: string[]
  inputBinding:
    prefix: -t
- id: f
  doc: ''
  type: string[]
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
