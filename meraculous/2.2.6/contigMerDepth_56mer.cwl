#!/usr/bin/env cwl-runner

baseCommand:
- contigMerDepth_56mer
class: CommandLineTool
cwlVersion: v1.0
id: contigmerdepth_56mer
inputs:
- doc: ''
  id: mer_count_file_prefix
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: mer_size
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: min_depth
  inputBinding:
    position: 2
  type: long
- doc: ''
  id: prefix_list_to_hash
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: num_threads
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: output_prefix
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: contigs_file
  inputBinding:
    position: 6
  type: string
