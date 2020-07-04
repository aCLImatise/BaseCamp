class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mtsv_tree_build_FLAGS.cwl
inputs:
- id: index
  doc: ''
  type: string
  inputBinding:
    prefix: --index
- id: dump
  doc: ''
  type: string
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-tree-build
- FLAGS
