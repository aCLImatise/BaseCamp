#!/usr/bin/env cwl-runner

baseCommand:
- getGenomeTilingPeaks
class: CommandLineTool
cwlVersion: v1.0
id: getgenometilingpeaks
inputs:
- doc: '[tag directory 2] ... (tag directories to analyze)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: <#> (resolution of analysis)
  id: res
  inputBinding:
    prefix: -res
  type: boolean
