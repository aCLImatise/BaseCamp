class: CommandLineTool
id: TEsorter_test.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tesorter:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- TEsorter-test
