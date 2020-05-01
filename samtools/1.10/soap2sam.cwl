#!/usr/bin/env cwl-runner

baseCommand:
- soap2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: soap2sam.pl
inputs:
- doc: ''
  id: aln_soap
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: boolean
