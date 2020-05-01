#!/usr/bin/env cwl-runner

baseCommand:
- biopet-bamstats
class: CommandLineTool
cwlVersion: v1.0
id: biopet-bamstats
inputs:
- doc: ''
  id: bam_stats
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: tool_name
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: tool
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: args
  inputBinding:
    position: 3
  type: string
