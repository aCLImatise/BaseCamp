class: CommandLineTool
id: deepac_gwpa_details..cwl
inputs:
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gwp_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- gwpa
- details.
