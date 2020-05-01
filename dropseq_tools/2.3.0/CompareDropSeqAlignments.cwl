#!/usr/bin/env cwl-runner

baseCommand:
- CompareDropSeqAlignments
class: CommandLineTool
cwlVersion: v1.0
id: comparedropseqalignments
inputs:
- doc: (default 4g)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: final command line before executing
  id: v
  inputBinding:
    prefix: -v
  type: string
