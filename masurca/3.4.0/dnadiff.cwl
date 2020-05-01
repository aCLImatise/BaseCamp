#!/usr/bin/env cwl-runner

baseCommand:
- dnadiff
class: CommandLineTool
cwlVersion: v1.0
id: dnadiff
inputs:
- doc: dnadiff  [options]  -d <delta file>
  id: or
  inputBinding:
    position: 0
  type: string
