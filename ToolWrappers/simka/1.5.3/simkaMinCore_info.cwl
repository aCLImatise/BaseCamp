class: CommandLineTool
id: simkaMinCore_info.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    filename to a sketch file'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simka:1.5.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- info
