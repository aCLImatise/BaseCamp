class: CommandLineTool
id: sdm.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sdm:1.73--he513fc3_1
cwlVersion: v1.1
baseCommand:
- sdm
