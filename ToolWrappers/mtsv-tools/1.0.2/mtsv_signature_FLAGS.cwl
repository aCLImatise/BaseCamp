class: CommandLineTool
id: mtsv_signature_FLAGS.cwl
inputs:
- id: in_lca
  doc: ''
  type: string?
  inputBinding:
    prefix: --lca
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    prefix: --input
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
- mtsv-signature
- FLAGS
