class: CommandLineTool
id: nextstrain_update.cwl
inputs:
- id: in_next_strain
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- update
