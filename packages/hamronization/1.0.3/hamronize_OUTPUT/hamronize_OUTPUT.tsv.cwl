class: CommandLineTool
id: hamronize_OUTPUT.tsv.cwl
inputs:
- id: in_ham_ron_ize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hamronization:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- hamronize
- OUTPUT.tsv
