#!/usr/bin/env cwl-runner

baseCommand:
- pFst
class: CommandLineTool
cwlVersion: v1.0
id: pfst
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
