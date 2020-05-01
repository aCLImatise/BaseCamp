#!/usr/bin/env cwl-runner

baseCommand:
- removeDuplicate
class: CommandLineTool
cwlVersion: v1.0
id: removeduplicate
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
