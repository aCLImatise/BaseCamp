class: CommandLineTool
id: ../../../ngs_disambiguate.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: ngs_disambiguate
  doc: '[-d] -s <string> -o <string> [-a <string>] [--] [--version] [-h] <A> <B>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ngs_disambiguate
