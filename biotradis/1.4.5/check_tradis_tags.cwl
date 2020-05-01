#!/usr/bin/env cwl-runner

baseCommand:
- check_tradis_tags
class: CommandLineTool
cwlVersion: v1.0
id: check_tradis_tags
inputs:
- doc: ''
  id: check_tags
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: File
