#!/usr/bin/env cwl-runner

baseCommand:
- sequenceDiversity
class: CommandLineTool
cwlVersion: v1.0
id: sequencediversity
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
