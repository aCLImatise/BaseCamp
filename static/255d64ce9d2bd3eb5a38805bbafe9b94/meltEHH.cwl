class: CommandLineTool
id: ../../../meltEHH.cwl
inputs:
- id: region
  doc: ':1-1000 > STDOUT 2> STDERR          '
  type: string
  inputBinding:
    prefix: --region
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
outputs: []
cwlVersion: v1.1
baseCommand:
- meltEHH
