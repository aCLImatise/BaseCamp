class: CommandLineTool
id: planemo_clone.cwl
inputs:
- id: in_skip_fork
  doc: Create a named branch on result.
  type: string?
  inputBinding:
    prefix: --skip_fork
- id: in_target
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- clone
