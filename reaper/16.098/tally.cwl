#!/usr/bin/env cwl-runner

baseCommand:
- tally
class: CommandLineTool
cwlVersion: v1.0
id: tally
inputs:
- doc: with cmp paired end identifier mismatches will be reported
  id: cmp
  inputBinding:
    position: 0
  type: string
