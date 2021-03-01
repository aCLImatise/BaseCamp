class: CommandLineTool
id: bioblend_galaxy_tests.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioblend:0.15.0--py_0
cwlVersion: v1.1
baseCommand:
- bioblend-galaxy-tests
