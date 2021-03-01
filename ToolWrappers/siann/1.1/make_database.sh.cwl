class: CommandLineTool
id: make_database.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/siann:1.1--0
cwlVersion: v1.1
baseCommand:
- make_database.sh
