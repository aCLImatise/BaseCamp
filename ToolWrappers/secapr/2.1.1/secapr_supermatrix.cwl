class: CommandLineTool
id: secapr_supermatrix.cwl
inputs:
- id: in_sec_apr
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- supermatrix
