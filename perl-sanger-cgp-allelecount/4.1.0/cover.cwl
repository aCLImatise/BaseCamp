#!/usr/bin/env cwl-runner

baseCommand:
- cover
class: CommandLineTool
cwlVersion: v1.0
id: cover
inputs:
- doc: ''
  id: test
  inputBinding:
    prefix: -test
  type: boolean
