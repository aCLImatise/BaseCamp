#!/usr/bin/env cwl-runner

baseCommand:
- treeator
class: CommandLineTool
cwlVersion: v1.0
id: treeator
inputs:
- doc: (default w).
  id: output
  inputBinding:
    prefix: --output
  type: string
