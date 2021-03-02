class: CommandLineTool
id: PyClone.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyclone:0.13.1--py_0
cwlVersion: v1.1
baseCommand:
- PyClone
