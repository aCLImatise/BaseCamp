class: CommandLineTool
id: scanpy_scripts_tests.bats.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scanpy-scripts:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- scanpy-scripts-tests.bats
