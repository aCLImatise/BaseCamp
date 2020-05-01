#!/usr/bin/env cwl-runner

baseCommand:
- swga
class: CommandLineTool
cwlVersion: v1.0
id: swga
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
