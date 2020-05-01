#!/usr/bin/env cwl-runner

baseCommand:
- expandCols
class: CommandLineTool
cwlVersion: v1.0
id: expandcols
inputs:
- doc: 10      20      1       10
  id: chr1
  inputBinding:
    position: 0
  type: string
- doc: 10      20      2       20
  id: chr1
  inputBinding:
    position: 1
  type: string
- doc: 10      20      3       30
  id: chr1
  inputBinding:
    position: 2
  type: string
- doc: 40      50      4       40
  id: chr1
  inputBinding:
    position: 3
  type: string
- doc: 40      50      5       50
  id: chr1
  inputBinding:
    position: 4
  type: string
- doc: 40      50      6       60
  id: chr1
  inputBinding:
    position: 5
  type: string
- doc: Input file. Assumes "stdin" if omitted.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Specify the column (1-based) that should be summarized. - Required.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
