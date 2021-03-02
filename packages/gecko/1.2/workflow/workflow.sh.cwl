class: CommandLineTool
id: workflow.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecko:1.2--h516909a_0
cwlVersion: v1.1
baseCommand:
- workflow.sh
