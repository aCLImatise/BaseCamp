#!/usr/bin/env cwl-runner

baseCommand:
- shiftBed
class: CommandLineTool
cwlVersion: v1.0
id: shiftbed
inputs:
- doc: '4262'
  id: chr18_gl000207_random
  inputBinding:
    position: 0
  type: string
- doc: Shift the BED/GFF/VCF entry -s base pairs. - (Integer) or (Float, e.g. 0.1)
    if used with -pct.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Shift features on the + strand by -p base pairs. - (Integer) or (Float, e.g.
    0.1) if used with -pct.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Shift features on the - strand by -m base pairs. - (Integer) or (Float, e.g.
    0.1) if used with -pct.
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Define -s, -m and -p as a fraction of the feature's length. E.g. if used on
    a 1000bp feature, -s 0.50,  will shift the feature 500 bp "upstream".  Default
    = false.
  id: pct
  inputBinding:
    prefix: -pct
  type: boolean
- doc: the header from the input file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
