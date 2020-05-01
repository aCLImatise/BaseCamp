#!/usr/bin/env cwl-runner

baseCommand:
- fill-an-ac
class: CommandLineTool
cwlVersion: v1.0
id: fill-an-ac
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_vcf
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_vcf
  inputBinding:
    position: 2
  type: string
