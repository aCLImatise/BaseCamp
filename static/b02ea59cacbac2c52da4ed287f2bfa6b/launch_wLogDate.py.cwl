class: CommandLineTool
id: launch_wLogDate.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wlogdate:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- launch_wLogDate.py
