#!/usr/bin/env cwl-runner

baseCommand:
- rank.pl
class: CommandLineTool
cwlVersion: v1.0
id: rank.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source_file_1
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: source_file_2
  inputBinding:
    position: 2
  type: string
- doc: Rounds coefficient to N places (default = 4)
  id: precision
  inputBinding:
    prefix: --precision
  type: string
- doc: Returns count of ngrams in common between files
  id: n
  inputBinding:
    prefix: --N
  type: boolean
