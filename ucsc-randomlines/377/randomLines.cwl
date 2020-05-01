#!/usr/bin/env cwl-runner

baseCommand:
- randomLines
class: CommandLineTool
cwlVersion: v1.0
id: randomlines
inputs:
- doc: ''
  id: in_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: count
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: outfile
  inputBinding:
    position: 2
  type: string
- doc: used for randomizing, useful for debugging.
  id: seed
  inputBinding:
    prefix: -seed
  type: string
- doc: 'lines and those starting with '
  id: de_comment
  inputBinding:
    prefix: -decomment
  type: string
