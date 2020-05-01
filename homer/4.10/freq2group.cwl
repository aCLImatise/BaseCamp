#!/usr/bin/env cwl-runner

baseCommand:
- freq2group.pl
class: CommandLineTool
cwlVersion: v1.0
id: freq2group.pl
inputs:
- doc: Bin     Count
  id: freq
  inputBinding:
    position: 0
  type: string
