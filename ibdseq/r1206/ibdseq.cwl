#!/usr/bin/env cwl-runner

baseCommand:
- ibdseq
class: CommandLineTool
cwlVersion: v1.0
id: ibdseq
inputs:
- doc: ''
  id: java
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: parameters
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
  type: string
