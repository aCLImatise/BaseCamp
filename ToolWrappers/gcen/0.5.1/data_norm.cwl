class: CommandLineTool
id: data_norm.cwl
inputs:
- id: in_output
  doc: 'normalization method (default: upqt)'
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- data_norm
