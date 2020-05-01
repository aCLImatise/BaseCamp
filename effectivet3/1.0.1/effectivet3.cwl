#!/usr/bin/env cwl-runner

baseCommand:
- effectivet3
class: CommandLineTool
cwlVersion: v1.0
id: effectivet3
inputs:
- doc: ''
  id: java
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: or
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
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
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: q
  inputBinding:
    prefix: -q
  type: boolean
