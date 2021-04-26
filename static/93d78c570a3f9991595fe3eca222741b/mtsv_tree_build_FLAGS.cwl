class: CommandLineTool
id: mtsv_tree_build_FLAGS.cwl
inputs:
- id: in_index
  doc: ''
  type: string?
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtsv-tools:1.0.2--h779adbc_0
cwlVersion: v1.1
baseCommand:
- mtsv-tree-build
- FLAGS
