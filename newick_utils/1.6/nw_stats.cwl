#!/usr/bin/env cwl-runner

baseCommand:
- nw_stats
class: CommandLineTool
cwlVersion: v1.0
id: nw_stats
inputs:
- doc: '[lc]: format in lines (l) or columns (c). Default is l.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
