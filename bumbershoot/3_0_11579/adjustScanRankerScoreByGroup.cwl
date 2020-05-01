#!/usr/bin/env cwl-runner

baseCommand:
- adjustScanRankerScoreByGroup
class: CommandLineTool
cwlVersion: v1.0
id: adjustscanrankerscorebygroup
inputs:
- doc: ''
  id: group_file
  inputBinding:
    position: 0
  type: string
