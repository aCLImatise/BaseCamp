#!/usr/bin/env cwl-runner

baseCommand:
- find-compounds.pl
class: CommandLineTool
cwlVersion: v1.0
id: find-compounds.pl
inputs:
- doc: ''
  id: output_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: compound_word_list
  inputBinding:
    position: 2
  type: string
- doc: Find compound words in one line.
  id: new_line
  inputBinding:
    prefix: --newline
  type: boolean
