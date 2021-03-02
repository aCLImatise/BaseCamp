class: CommandLineTool
id: tblastn.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3
cwlVersion: v1.1
baseCommand:
- tblastn
