#!/usr/bin/env cwl-runner

baseCommand:
- loadPromoters.pl
class: CommandLineTool
cwlVersion: v1.0
id: loadpromoters.pl
inputs:
- doc: '(Redundant/CpG analysis start, default: -300)'
  id: as
  inputBinding:
    prefix: -as
  type: string
- doc: '(Redundant/CpG analysis end, default: 50)'
  id: ae
  inputBinding:
    prefix: -ae
  type: string
- doc: '(default: 4000, i.e. +/- 2000 from the TSS)'
  id: size
  inputBinding:
    prefix: -size
  type: long
- doc: '<#> (Distance between promoters to consider redundant, default: 500)'
  id: dist
  inputBinding:
    prefix: -dist
  type: boolean
- doc: <#> (offset of the first base, i.e. -1000 for 1kb upstream)
  id: offset
  inputBinding:
    prefix: -offset
  type: boolean
