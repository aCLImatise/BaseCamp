#!/usr/bin/env cwl-runner

baseCommand:
- vcfbreakmulti
class: CommandLineTool
cwlVersion: v1.0
id: vcfbreakmulti
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
