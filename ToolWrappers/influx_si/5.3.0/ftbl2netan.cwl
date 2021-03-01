class: CommandLineTool
id: ftbl2netan.cwl
inputs:
- id: in_network
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
  dockerPull: quay.io/biocontainers/influx_si:5.3.0--py_0
cwlVersion: v1.1
baseCommand:
- ftbl2netan
