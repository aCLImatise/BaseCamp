#!/usr/bin/env cwl-runner

baseCommand:
- motifcompile
class: CommandLineTool
cwlVersion: v1.0
id: motifcompile
inputs:
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: ''
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
