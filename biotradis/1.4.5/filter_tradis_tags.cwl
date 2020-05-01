#!/usr/bin/env cwl-runner

baseCommand:
- filter_tradis_tags
class: CommandLineTool
cwlVersion: v1.0
id: filter_tradis_tags
inputs:
- doc: ''
  id: filter_tags
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: File
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
