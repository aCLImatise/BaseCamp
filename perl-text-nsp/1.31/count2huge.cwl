#!/usr/bin/env cwl-runner

baseCommand:
- count2huge.pl
class: CommandLineTool
cwlVersion: v1.0
id: count2huge.pl
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
- doc: ''
  id: destination_dir
  inputBinding:
    position: 2
  type: string
- doc: 'Split the bigrams list into smaller pieces. Each file has N bigrams. N is
    an integer (N>=1). '
  id: split
  inputBinding:
    prefix: --split
  type: string
