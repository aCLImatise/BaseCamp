class: CommandLineTool
id: add_metadata_tree.py.cwl
inputs:
- id: in_string_to_remove
  doc: string to be removed in the tree node names
  type: string[]
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
