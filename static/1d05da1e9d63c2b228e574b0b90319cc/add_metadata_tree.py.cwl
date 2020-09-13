class: CommandLineTool
id: ../../../add_metadata_tree.py.cwl
inputs:
- id: in_ifn_metadata_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ifn_metadatas
- id: in_ifn_trees
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ifn_trees
- id: in_string_to_remove
  doc: string to be removed in the tree node names
  type: string
  inputBinding:
    prefix: --string_to_remove
- id: in_metadata_s
  doc: "The metadata fields that you want to add. Default: add\nall metadata from\
    \ the first line.\n"
  type: string[]
  inputBinding:
    prefix: --metadatas
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
