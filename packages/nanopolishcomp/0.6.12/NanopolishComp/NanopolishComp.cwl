class: CommandLineTool
id: NanopolishComp.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanopolishcomp:0.6.12--py_0
cwlVersion: v1.1
baseCommand:
- NanopolishComp
