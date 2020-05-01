#!/usr/bin/env cwl-runner

baseCommand:
- getOverlap
class: CommandLineTool
cwlVersion: v1.0
id: getoverlap
inputs:
- doc: Input file. Use "stdin" for pipes.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: "Specify the columns (1-based) for the starts and ends of the features for\
    \ which you'd like to compute the overlap/distance. The columns must be listed\
    \ in the following order:  start1,end1,start2,end2"
  id: cols
  inputBinding:
    prefix: -cols
  type: boolean
