#!/usr/bin/env cwl-runner

baseCommand:
- smoother
class: CommandLineTool
cwlVersion: v1.0
id: smoother
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
