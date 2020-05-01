#!/usr/bin/env cwl-runner

baseCommand:
- dsk
class: CommandLineTool
cwlVersion: v1.0
id: dsk
inputs:
- doc: ''
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: km_er_size
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: histo
  inputBinding:
    prefix: -histo
  type: boolean
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: boolean
