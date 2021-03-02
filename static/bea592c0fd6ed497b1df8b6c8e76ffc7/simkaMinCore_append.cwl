class: CommandLineTool
id: simkaMinCore_append.cwl
inputs:
- id: in_in_one
  doc: '(1 arg) :    first sketch file to merge (this file will be overwritten)'
  type: boolean?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: '(1 arg) :    second sketch file to merge (this file will be appended to the
    first one)'
  type: boolean?
  inputBinding:
    prefix: -in2
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
- append
