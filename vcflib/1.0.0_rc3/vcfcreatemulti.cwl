#!/usr/bin/env cwl-runner

baseCommand:
- vcfcreatemulti
class: CommandLineTool
cwlVersion: v1.0
id: vcfcreatemulti
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
