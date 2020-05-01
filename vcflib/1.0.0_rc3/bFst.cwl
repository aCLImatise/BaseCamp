#!/usr/bin/env cwl-runner

baseCommand:
- bFst
class: CommandLineTool
cwlVersion: v1.0
id: bfst
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
