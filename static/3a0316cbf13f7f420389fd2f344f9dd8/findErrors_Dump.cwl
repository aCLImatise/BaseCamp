class: CommandLineTool
id: findErrors_Dump.cwl
inputs:
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- findErrors-Dump
