#!/usr/bin/env cwl-runner

baseCommand:
- linguistic_sequence_complexity.py
class: CommandLineTool
cwlVersion: v1.0
id: linguistic_sequence_complexity.py
inputs:
- doc: 'input vcf file (default: None)'
  id: sequence
  inputBinding:
    prefix: --sequence
  type: string
