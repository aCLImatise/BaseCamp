#!/usr/bin/env cwl-runner

baseCommand:
- GotohScan
class: CommandLineTool
cwlVersion: v1.0
id: gotohscan
inputs:
- doc: ''
  id: arguments
  inputBinding:
    position: 0
  type: string
