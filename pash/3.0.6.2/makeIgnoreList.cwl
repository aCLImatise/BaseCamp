#!/usr/bin/env cwl-runner

baseCommand:
- makeIgnoreList
class: CommandLineTool
cwlVersion: v1.0
id: makeignorelist
inputs:
- doc: ''
  id: make_ignore_list_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
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
  type: long
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: long
