#!/usr/bin/env cwl-runner

baseCommand:
- kobas-identify
class: CommandLineTool
cwlVersion: v1.0
id: kobas-identify
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
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
  type: string
- doc: ''
  id: y
  inputBinding:
    prefix: -y
  type: string
- doc: ''
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: x
  inputBinding:
    prefix: -x
  type: string
