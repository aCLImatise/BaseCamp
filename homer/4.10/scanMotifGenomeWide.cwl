#!/usr/bin/env cwl-runner

baseCommand:
- scanMotifGenomeWide.pl
class: CommandLineTool
cwlVersion: v1.0
id: scanmotifgenomewide.pl
inputs:
- doc: (format as a BED file, i.e. for UCSC upload) -int (round motif scores to nearest
    integer, use if making bigBed file)
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: (use the original homer)
  id: home_r1
  inputBinding:
    prefix: -homer1
  type: boolean
- doc: (use homer2 instead of the original homer, default)
  id: home_r2
  inputBinding:
    prefix: -homer2
  type: boolean
- doc: (keep ALL sites, even ones that overlap, default is to keep one)
  id: keep_all
  inputBinding:
    prefix: -keepAll
  type: boolean
- doc: (search for motifs in repeat masked sequence)
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
- doc: <#> (Number of CPUs to use)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
