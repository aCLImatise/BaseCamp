#!/usr/bin/env cwl-runner

baseCommand:
- aggregate_scores_in_intervals.py
class: CommandLineTool
cwlVersion: v1.0
id: aggregate_scores_in_intervals.py
inputs:
- doc: ''
  id: score_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: interval_file
  inputBinding:
    position: 1
  type: long
- doc: ''
  id: out_file
  inputBinding:
    position: 2
  type: string
- doc: "'score_file' is actually a directory of binned array files"
  id: binned
  inputBinding:
    prefix: --binned
  type: boolean
- doc: bed file containing regions not to consider valid
  id: mask
  inputBinding:
    prefix: --mask
  type: string
