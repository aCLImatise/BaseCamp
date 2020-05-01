#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-versions.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-versions.py
inputs:
- doc: ''
  id: bac_topia
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: versions
  inputBinding:
    position: 1
  type: string
- doc: Directory where Bactopia repository is stored.
  id: bac_topia
  inputBinding:
    prefix: --bactopia
  type: string
