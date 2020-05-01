#!/usr/bin/env cwl-runner

baseCommand:
- psl2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: psl2sam.pl
inputs:
- doc: ''
  id: '1'
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '3'
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: '5'
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: '2'
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: in_psl
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ''
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: boolean
