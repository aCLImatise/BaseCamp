#!/usr/bin/env cwl-runner

baseCommand:
- removeRedundantPeaks.pl
class: CommandLineTool
cwlVersion: v1.0
id: removeredundantpeaks.pl
inputs:
- doc: <#> (Where % is the percentage match to be considered redundant, default=0.33)
  id: blat
  inputBinding:
    prefix: -blat
  type: boolean
- doc: <#> (size of peaks to be used for sequence similarity, default=given)
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: (genome for extracting sequence)
  id: genome
  inputBinding:
    prefix: -genome
  type: Directory
- doc: (use repeat masked sequence)
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
