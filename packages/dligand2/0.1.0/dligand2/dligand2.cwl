class: CommandLineTool
id: dligand2.cwl
inputs:
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dligand2:0.1.0--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- dligand2
