class: CommandLineTool
id: cbGuessGencode.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- cbGuessGencode
