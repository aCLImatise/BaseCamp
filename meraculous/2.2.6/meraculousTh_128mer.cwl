#!/usr/bin/env cwl-runner

baseCommand:
- meraculousTh_128mer
class: CommandLineTool
cwlVersion: v1.0
id: meraculousth_128mer
inputs:
- doc: ''
  id: u_fx_file_wildcard
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: mer_size
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: num_threads
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: expected_num_elements
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: min
  inputBinding:
    position: 5
  type: long
- doc: ''
  id: contig
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: size
  inputBinding:
    position: 7
  type: long
- doc: ''
  id: debug_mode
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: seed_list_filename
  inputBinding:
    position: 9
  type: string
