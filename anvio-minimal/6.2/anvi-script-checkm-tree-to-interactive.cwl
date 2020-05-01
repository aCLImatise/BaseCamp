#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-checkm-tree-to-interactive
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-checkm-tree-to-interactive
inputs:
- doc: ''
  id: tree
  inputBinding:
    position: 0
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
  type: Directory
