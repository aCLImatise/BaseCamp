#!/usr/bin/env cwl-runner

baseCommand:
- translate-gard
class: CommandLineTool
cwlVersion: v1.0
id: translate-gard
inputs:
- doc: input filename (like CD2.nex.GARD.csv)  [required]
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: json filename (like CD2.nex.out.json    [required]
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: output filename                         [required]
  id: o
  inputBinding:
    prefix: -o
  type: boolean
