#!/usr/bin/env cwl-runner

baseCommand:
- add_tradis_tags
class: CommandLineTool
cwlVersion: v1.0
id: add_tradis_tags
inputs:
- doc: ''
  id: add_tags
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: File
