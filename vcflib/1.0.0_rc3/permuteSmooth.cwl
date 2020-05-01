#!/usr/bin/env cwl-runner

baseCommand:
- permuteSmooth
class: CommandLineTool
cwlVersion: v1.0
id: permutesmooth
inputs:
- doc: ''
  id: '5'
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '1'
  inputBinding:
    position: 1
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
