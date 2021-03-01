class: CommandLineTool
id: pyfastx_stat_fastx.cwl
inputs:
- id: in_py_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
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
  dockerPull: quay.io/biocontainers/pyfastx:0.8.2--py36h955c1b8_0
cwlVersion: v1.1
baseCommand:
- pyfastx
- stat
- fastx
