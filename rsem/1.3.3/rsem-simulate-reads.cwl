#!/usr/bin/env cwl-runner

baseCommand:
- rsem-simulate-reads
class: CommandLineTool
cwlVersion: v1.0
id: rsem-simulate-reads
inputs:
- doc: ''
  id: reference_name
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: estimated_model_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: estimated_isoform_results
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: the_ta0
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: n
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: output_name
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ''
  id: q
  inputBinding:
    prefix: -q
  type: boolean
