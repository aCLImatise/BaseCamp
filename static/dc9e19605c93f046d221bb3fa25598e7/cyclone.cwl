class: CommandLineTool
id: cyclone.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypairs:3.2.3--py_0
cwlVersion: v1.1
baseCommand:
- cyclone
