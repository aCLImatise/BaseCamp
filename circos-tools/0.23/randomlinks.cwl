class: CommandLineTool
id: ../../../randomlinks.cwl
inputs:
- id: karyotype
  doc: ''
  type: string
  inputBinding:
    prefix: -karyotype
- id: ruleset
  doc: ''
  type: string
  inputBinding:
    prefix: -ruleset
outputs: []
cwlVersion: v1.1
baseCommand:
- randomlinks
