#!/usr/bin/env cwl-runner

baseCommand:
- kseq_count
class: CommandLineTool
cwlVersion: v1.0
id: kseq_count
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: boolean
