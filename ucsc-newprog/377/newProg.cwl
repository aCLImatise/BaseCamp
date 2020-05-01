#!/usr/bin/env cwl-runner

baseCommand:
- newProg
class: CommandLineTool
cwlVersion: v1.0
id: newprog
inputs:
- doc: ''
  id: progname
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: description
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: words
  inputBinding:
    position: 2
  type: string
- doc: 'and mysql libraries as well as jkweb.a archives '
  id: include
  inputBinding:
    prefix: '- include'
  type: string
- doc: '- create shell of a CGI script for web'
  id: cgi
  inputBinding:
    prefix: -cgi
  type: boolean
