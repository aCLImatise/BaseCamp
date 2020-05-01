#!/usr/bin/env cwl-runner

baseCommand:
- getFocalPeaks.pl
class: CommandLineTool
cwlVersion: v1.0
id: getfocalpeaks.pl
inputs:
- doc: '<#> (minimum focus ratio threshold, default: 0.75)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (maximum focus ratio threshold, default: none)'
  id: max
  inputBinding:
    prefix: -max
  type: boolean
