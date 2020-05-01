#!/usr/bin/env cwl-runner

baseCommand:
- wcFst
class: CommandLineTool
cwlVersion: v1.0
id: wcfst
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
