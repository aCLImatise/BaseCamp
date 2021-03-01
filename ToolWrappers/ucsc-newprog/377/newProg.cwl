class: CommandLineTool
id: newProg.cwl
inputs:
- id: in_jkh_gap
  doc: '- include jkhgap.a and mysql libraries as well as jkweb.a archives'
  type: boolean?
  inputBinding:
    prefix: -jkhgap
- id: in_cgi
  doc: '- create shell of a CGI script for web'
  type: boolean?
  inputBinding:
    prefix: -cgi
- id: in_progname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_description
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- newProg
