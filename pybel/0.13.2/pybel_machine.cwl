class: CommandLineTool
id: pybel_machine.cwl
inputs:
- id: local
  doc: Upload to local database.
  type: boolean
  inputBinding:
    prefix: --local
- id: host
  doc: URL of BEL Commons. Defaults to https://bel- commons.scai.fraunhofer.de
  type: string
  inputBinding:
    prefix: --host
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- machine
