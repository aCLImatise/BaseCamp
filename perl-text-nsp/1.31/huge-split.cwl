#!/usr/bin/env cwl-runner

baseCommand:
- huge-split.pl
class: CommandLineTool
cwlVersion: v1.0
id: huge-split.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source
  inputBinding:
    position: 1
  type: string
- doc: 'Split the bigram file into smaller files. Every  smaller file contains N bigrams.
    N must be an integer. '
  id: split
  inputBinding:
    prefix: --split
  type: string
