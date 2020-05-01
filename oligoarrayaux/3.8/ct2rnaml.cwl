#!/usr/bin/env cwl-runner

baseCommand:
- ct2rnaml
class: CommandLineTool
cwlVersion: v1.0
id: ct2rnaml
inputs:
- doc: ''
  id: file_ct
  inputBinding:
    position: 0
  type: File
