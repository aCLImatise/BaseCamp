class: CommandLineTool
id: coolbox.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.3--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
