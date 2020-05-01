#!/usr/bin/env cwl-runner

baseCommand:
- RNARedPrint
class: CommandLineTool
cwlVersion: v1.0
id: rnaredprint
inputs:
- doc: '- Sets number of generated sequences (default 10)'
  id: num
  inputBinding:
    prefix: --num
  type: string
- doc: '- Simply compute the partition function and report the result.'
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: '- Prefix path for locating the TD libraries'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
