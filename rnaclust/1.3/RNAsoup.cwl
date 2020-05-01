#!/usr/bin/env cwl-runner

baseCommand:
- RNAsoup
class: CommandLineTool
cwlVersion: v1.0
id: rnasoup
inputs:
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
