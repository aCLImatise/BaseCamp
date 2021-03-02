class: CommandLineTool
id: DateRepeats.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/repeatmasker:4.1.1--pl526_1
cwlVersion: v1.1
baseCommand:
- DateRepeats
