class: CommandLineTool
id: msformatter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastsimbac:1.0.1_bd3ad13d8f79--h17a57d0_1
cwlVersion: v1.1
baseCommand:
- msformatter
