#!/usr/bin/env cwl-runner

baseCommand:
- novo2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: novo2sam.pl
inputs:
- doc: ''
  id: aln_novo
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: boolean
