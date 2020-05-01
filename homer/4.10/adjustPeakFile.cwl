#!/usr/bin/env cwl-runner

baseCommand:
- adjustPeakFile.pl
class: CommandLineTool
cwlVersion: v1.0
id: adjustpeakfile.pl
inputs:
- doc: (get both 5' and 3' ends - 3' ends will be flipped)
  id: ends
  inputBinding:
    prefix: -ends
  type: boolean
- doc: (change strand of peak)
  id: flip_strand
  inputBinding:
    prefix: -flipStrand
  type: boolean
- doc: '<#> (remove peaks smaller than #)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (remove peaks larger than #)'
  id: max
  inputBinding:
    prefix: -max
  type: boolean
