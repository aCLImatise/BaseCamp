#!/usr/bin/env cwl-runner

baseCommand:
- kat_jellyfish
class: CommandLineTool
cwlVersion: v1.0
id: kat_jellyfish
inputs:
- doc: ''
  id: jellyfish
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: cmd
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: arg
  inputBinding:
    position: 2
  type: string
