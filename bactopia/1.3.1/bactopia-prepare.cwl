#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-prepare.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-prepare.py
inputs:
- doc: ''
  id: bac_topia
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: prepare
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: str
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ''
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ''
  id: pattern
  inputBinding:
    prefix: --pattern
  type: string
