class: CommandLineTool
id: pantools.cwl
inputs:
- id: in_jar
  doc: ''
  type: File?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_jvm_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pantools:3.1.0--0
cwlVersion: v1.1
baseCommand:
- pantools
