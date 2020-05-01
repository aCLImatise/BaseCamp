#!/usr/bin/env cwl-runner

baseCommand:
- svtool_to_vcf.py
class: CommandLineTool
cwlVersion: v1.0
id: svtool_to_vcf.py
inputs:
- doc: 'SV tool output file (default: None)'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Output VCF to create (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Tool name (default: BreakDancer)'
  id: tool
  inputBinding:
    prefix: --tool
  type: string
- doc: 'Sample name (default: None)'
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: 'Reference FASTA (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Sort the VCF records before writing (default: False)'
  id: sort
  inputBinding:
    prefix: --sort
  type: boolean
- doc: 'Tabix compress and index the output VCF (default: False)'
  id: index
  inputBinding:
    prefix: --index
  type: boolean
