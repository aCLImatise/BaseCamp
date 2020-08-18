class: CommandLineTool
id: ../../../pybel_post.cwl
inputs:
- id: host
  doc: URL of BEL Commons. Defaults to https://bel- commons.scai.fraunhofer.de
  type: string
  inputBinding:
    prefix: --host
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- post
