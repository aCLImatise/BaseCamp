#!/usr/bin/env cwl-runner

baseCommand:
- flankBed
class: CommandLineTool
cwlVersion: v1.0
id: flankbed
inputs:
- doc: '4262'
  id: chr18_gl000207_random
  inputBinding:
    position: 0
  type: string
- doc: Create flanking interval(s) using -b base pairs in each direction. - (Integer)
    or (Float, e.g. 0.1) if used with -pct.
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: The number of base pairs that a flank should start from orig. start coordinate.
    - (Integer) or (Float, e.g. 0.1) if used with -pct.
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: The number of base pairs that a flank should end from orig. end coordinate.
    - (Integer) or (Float, e.g. 0.1) if used with -pct.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Define -l and -r based on strand. E.g. if used, -l 500 for a negative-stranded
    feature,  it will start the flank 500 bp downstream.  Default = false.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Define -l and -r as a fraction of the feature's length. E.g. if used on a 1000bp
    feature, -l 0.50,  will add 500 bp "upstream".  Default = false.
  id: pct
  inputBinding:
    prefix: -pct
  type: boolean
- doc: the header from the input file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
