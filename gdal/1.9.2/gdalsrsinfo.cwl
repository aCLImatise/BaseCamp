#!/usr/bin/env cwl-runner

baseCommand:
- gdalsrsinfo
class: CommandLineTool
cwlVersion: v1.0
id: gdalsrsinfo
inputs:
- doc: ''
  id: srs_def
  inputBinding:
    position: 0
  type: string
