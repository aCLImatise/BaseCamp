#!/usr/bin/env cwl-runner

baseCommand:
- ecoPCR
class: CommandLineTool
cwlVersion: v1.0
id: ecopcr
inputs:
- doc: ''
  id: oligo1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: oligo2
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: ''
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: ''
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ''
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: k
  inputBinding:
    prefix: -k
  type: boolean
