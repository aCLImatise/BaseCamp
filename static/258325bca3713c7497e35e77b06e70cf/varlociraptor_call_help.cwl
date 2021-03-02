class: CommandLineTool
id: varlociraptor_call_help.cwl
inputs:
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_try
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
  dockerPull: quay.io/biocontainers/varlociraptor:2.6.1--hd5fb649_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- help
