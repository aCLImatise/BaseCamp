class: CommandLineTool
id: mtsv_tree_build_FLAGS.cwl
inputs:
- id: in_index
  doc: ''
  type: string
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-tree-build
- FLAGS
