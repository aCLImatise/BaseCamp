class: CommandLineTool
id: simkaCountProcess.cwl
inputs:
- id: in_nohup
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simka:1.5.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- simkaCountProcess
