#!/usr/bin/env cwl-runner

baseCommand:
- filter_input.py
class: CommandLineTool
cwlVersion: v1.0
id: filter_input.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: filter_input_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: paired_end_1fasta
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: paired_end_2fasta
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: output_dir
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: cm_dir
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: cm_to_use
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: num_of_cpu
  inputBinding:
    position: 7
  type: string
