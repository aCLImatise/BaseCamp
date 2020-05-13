class: CommandLineTool
id: fastatranslate.cwl
inputs:
- id: genetic_code
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --geneticcode
outputs: []
cwlVersion: v1.1
baseCommand:
- fastatranslate
