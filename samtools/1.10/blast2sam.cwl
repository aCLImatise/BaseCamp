#!/usr/bin/env cwl-runner

baseCommand:
- blast2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: blast2sam.pl
inputs:
- doc: ''
  id: in_blastn
  inputBinding:
    position: 0
  type: string
