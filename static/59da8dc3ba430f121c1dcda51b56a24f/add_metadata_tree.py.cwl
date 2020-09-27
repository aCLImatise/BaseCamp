class: CommandLineTool
id: add_metadata_tree.py.cwl
inputs:
- id: in_ifn_metadata_s
  doc: "[--string_to_remove STRING_TO_REMOVE]\n[--metadatas METADATAS [METADATAS ...]]"
  type: string[]
  inputBinding:
    prefix: --ifn_metadatas
- id: in_ifn_trees
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ifn_trees
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
