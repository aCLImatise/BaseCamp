#!/usr/bin/env cwl-runner

baseCommand:
- ChorusDraftPrebuild
class: CommandLineTool
cwlVersion: v1.0
id: chorusdraftprebuild
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
