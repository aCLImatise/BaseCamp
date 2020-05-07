class: CommandLineTool
id: newProg.cwl
inputs:
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
- id: include
  doc: 'and mysql libraries as well as jkweb.a archives '
  type: string
  inputBinding:
    prefix: '- include'
- id: cgi
  doc: '- create shell of a CGI script for web'
  type: boolean
  inputBinding:
    prefix: -cgi
outputs: []
cwlVersion: v1.1
baseCommand:
- newProg
