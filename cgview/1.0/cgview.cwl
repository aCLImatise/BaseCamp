#!/usr/bin/env cwl-runner

baseCommand:
- cgview
class: CommandLineTool
cwlVersion: v1.0
id: cgview
inputs:
- doc: ''
  id: java
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
  type: string
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: h
  inputBinding:
    prefix: -h
  type: string
