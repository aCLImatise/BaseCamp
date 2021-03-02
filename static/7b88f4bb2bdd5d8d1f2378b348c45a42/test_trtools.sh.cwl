class: CommandLineTool
id: test_trtools.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trtools:4.0.0--py_0
cwlVersion: v1.1
baseCommand:
- test_trtools.sh
