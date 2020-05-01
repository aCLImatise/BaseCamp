#!/usr/bin/env cwl-runner

baseCommand:
- merge2Dbed.pl
class: CommandLineTool
cwlVersion: v1.0
id: merge2dbed.pl
inputs:
- doc: '<#> (maximum distance between endpoints to merge, default: 15000) Usually
    for loops -res should be set to the window/superRes size, for TADs 2x window/superRes'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: (treat 2D bed input files as loops, default)
  id: loop
  inputBinding:
    prefix: -loop
  type: boolean
- doc: (treat 2D bed input files as TADs)
  id: tad
  inputBinding:
    prefix: -tad
  type: boolean
- doc: (output venn diagram overlaps to separate files)
  id: prefix
  inputBinding:
    prefix: -prefix
  type: File
