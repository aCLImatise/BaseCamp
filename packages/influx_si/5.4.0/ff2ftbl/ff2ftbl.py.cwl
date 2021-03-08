class: CommandLineTool
id: ff2ftbl.py.cwl
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
- ff2ftbl.py
