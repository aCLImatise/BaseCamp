#!/usr/bin/env cwl-runner

baseCommand:
- unitas.pl
class: CommandLineTool
cwlVersion: v1.0
id: unitas.pl
inputs:
- doc: .oXXXXXXXX. .XXXXo
  id: xxx
  inputBinding:
    position: 0
  type: string
- doc: '[-refseq sequence_2.fas ...]'
  id: refseq
  inputBinding:
    prefix: -refseq
  type: string
