#!/usr/bin/env cwl-runner

baseCommand:
- promer
class: CommandLineTool
cwlVersion: v1.0
id: promer
inputs:
- doc: Set the input reference multi-FASTA DNA file
  id: reference
  inputBinding:
    position: 0
  type: string
- doc: Set the input query multi-FASTA DNA file
  id: query
  inputBinding:
    position: 1
  type: string
- doc: '|matrix       Set the alignment matrix number to 1 [BLOSUM 45], 2 [BLOSUM
    62] or 3 [BLOSUM 80] (default 2)'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
