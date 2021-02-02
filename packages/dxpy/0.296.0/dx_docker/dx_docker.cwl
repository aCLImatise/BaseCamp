class: CommandLineTool
id: ../../../dx_docker.cwl
inputs:
- id: in_quiet
  doc: Suppress printing pull progress to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-docker
