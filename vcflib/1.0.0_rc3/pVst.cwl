#!/usr/bin/env cwl-runner

baseCommand:
- pVst
class: CommandLineTool
cwlVersion: v1.0
id: pvst
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
