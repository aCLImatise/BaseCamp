#!/usr/bin/env cwl-runner

baseCommand:
- getConservedRegions.pl
class: CommandLineTool
cwlVersion: v1.0
id: getconservedregions.pl
inputs:
- doc: '<0.0-1.0> (phastCons score needed to define conservation island, 0=all used)
    default: 0.8'
  id: cons
  inputBinding:
    prefix: -cons
  type: boolean
- doc: '[peakfile2]... (peak regions to exclude)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: (By default, exons are excluded)
  id: keep_exons
  inputBinding:
    prefix: -keepExons
  type: boolean
