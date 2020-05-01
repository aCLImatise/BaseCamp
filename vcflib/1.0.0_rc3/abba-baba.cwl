#!/usr/bin/env cwl-runner

baseCommand:
- abba-baba
class: CommandLineTool
cwlVersion: v1.0
id: abba-baba
inputs:
- doc: ',B,C,D'
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
