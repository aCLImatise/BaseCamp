class: CommandLineTool
id: blacksheep.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blksheep:0.0.7--py_0
cwlVersion: v1.1
baseCommand:
- blacksheep
