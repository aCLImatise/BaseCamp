#!/usr/bin/env cwl-runner

baseCommand:
- bioformats
class: CommandLineTool
cwlVersion: v1.0
id: bioformats
inputs:
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
