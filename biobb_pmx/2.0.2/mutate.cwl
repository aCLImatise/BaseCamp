#!/usr/bin/env cwl-runner

baseCommand:
- mutate
class: CommandLineTool
cwlVersion: v1.0
id: mutate
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: system
  inputBinding:
    prefix: --system
  type: string
- doc: ''
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: ''
  id: input_structure_path
  inputBinding:
    prefix: --input_structure_path
  type: string
- doc: ''
  id: output_structure_path
  inputBinding:
    prefix: --output_structure_path
  type: string
- doc: ''
  id: input_mutations_path
  inputBinding:
    prefix: --input_mutations_path
  type: string
- doc: ''
  id: input_b_structure_path
  inputBinding:
    prefix: --input_b_structure_path
  type: string
