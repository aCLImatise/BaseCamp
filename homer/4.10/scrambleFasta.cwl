#!/usr/bin/env cwl-runner

baseCommand:
- scrambleFasta.pl
class: CommandLineTool
cwlVersion: v1.0
id: scramblefasta.pl
inputs:
- doc: '<#> (Number of scrambled output sequences, defulat: 5x input)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
