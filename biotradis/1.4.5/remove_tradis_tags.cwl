#!/usr/bin/env cwl-runner

baseCommand:
- remove_tradis_tags
class: CommandLineTool
cwlVersion: v1.0
id: remove_tradis_tags
inputs:
- doc: ''
  id: remove_tags
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: File
