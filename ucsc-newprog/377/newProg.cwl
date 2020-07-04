class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/newProg.cwl
inputs:
- id: jkh_gap
  doc: '- include jkhgap.a and mysql libraries as well as jkweb.a archives '
  type: boolean
  inputBinding:
    prefix: -jkhgap
- id: cgi
  doc: '- create shell of a CGI script for web'
  type: boolean
  inputBinding:
    prefix: -cgi
- id: progname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: description
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: words
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- newProg
