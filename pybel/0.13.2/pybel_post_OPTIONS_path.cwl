class: CommandLineTool
id: pybel_post_OPTIONS_path.cwl
inputs:
- id: host
  doc: URL of BEL Commons. Defaults to https://bel- commons.scai.fraunhofer.de
  type: string
  inputBinding:
    prefix: --host
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- post
- OPTIONS
- path
