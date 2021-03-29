class: CommandLineTool
id: augur_titers_tree.cwl
inputs:
- id: in_titers
  doc: file with titer measurements
  type: string[]
  inputBinding:
    prefix: --titers
- id: in_tree
  doc: tree to perform fit titer model to
  type: string?
  inputBinding:
    prefix: --tree
- id: in_allow_empty_model
  doc: allow model to be empty
  type: boolean?
  inputBinding:
    prefix: --allow-empty-model
- id: in_output
  doc: "JSON file to save titer model\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.3.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- titers
- tree
