class: CommandLineTool
id: chewie.cwl
inputs:
- id: in_chewbbacadotpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_module
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewbbaca:2.7.0--py_0
cwlVersion: v1.1
baseCommand:
- chewie
