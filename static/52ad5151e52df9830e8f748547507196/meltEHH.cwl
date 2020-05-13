class: CommandLineTool
id: meltEHH.cwl
inputs:
- id: region
  doc: ':1-1000 > STDOUT 2> STDERR          '
  type: string
  inputBinding:
    prefix: --region
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- meltEHH
