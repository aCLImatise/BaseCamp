#!/usr/bin/env cwl-runner

baseCommand:
- o-get-reads-from-fasta
class: CommandLineTool
cwlVersion: v1.0
id: o-get-reads-from-fasta
inputs:
- doc: ''
  id: s
  inputBinding:
    prefix: -S
  type: boolean
