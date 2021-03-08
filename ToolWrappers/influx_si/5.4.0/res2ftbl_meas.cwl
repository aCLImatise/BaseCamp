class: CommandLineTool
id: res2ftbl_meas.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/influx_si:5.4.0--py_0
cwlVersion: v1.1
baseCommand:
- res2ftbl_meas
