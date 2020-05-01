#!/usr/bin/env cwl-runner

baseCommand:
- vcf2tsv
class: CommandLineTool
cwlVersion: v1.0
id: vcf2tsv
inputs:
- doc: ''
  id: vcf
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ''
  id: g
  inputBinding:
    prefix: -g
  type: boolean
