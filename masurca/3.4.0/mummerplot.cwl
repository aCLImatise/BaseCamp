#!/usr/bin/env cwl-runner

baseCommand:
- mummerplot
class: CommandLineTool
cwlVersion: v1.0
id: mummerplot
inputs:
- doc: ''
  id: match_file
  inputBinding:
    position: 0
  type: string
