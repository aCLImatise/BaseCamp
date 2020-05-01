#!/usr/bin/env cwl-runner

baseCommand:
- merCounterTh_56mer
class: CommandLineTool
cwlVersion: v1.0
id: mercounterth_56mer
inputs:
- doc: ''
  id: mer_size
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: min_count_to_report
  inputBinding:
    position: 1
  type: long
- doc: ''
  id: num_threads
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: prefix_list_to_hash
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: output_prefix
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: fast_q_descriptor_file
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: trim_flag
  inputBinding:
    position: 6
  type: string
