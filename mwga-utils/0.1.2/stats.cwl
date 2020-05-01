#!/usr/bin/env cwl-runner

baseCommand:
- stats
class: CommandLineTool
cwlVersion: v1.0
id: stats
inputs:
- doc: BP aligned in each assembly
  id: number
  inputBinding:
    prefix: '- Number'
  type: string
- doc: 'Prefix for output stats files [default: stats]'
  id: p
  inputBinding:
    prefix: -p
  type: string
