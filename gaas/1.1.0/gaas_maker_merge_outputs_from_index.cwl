#!/usr/bin/env cwl-runner

baseCommand:
- gaas_maker_merge_outputs_from_index.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_maker_merge_outputs_from_index.pl
inputs:
- doc: ''
  id: must
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: be
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: executed
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: in
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: folder
  inputBinding:
    position: 5
  type: Directory
- doc: ''
  id: from
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: which
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: maker
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: was
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: run
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: and
  inputBinding:
    position: 11
  type: string
- doc: ''
  id: will
  inputBinding:
    position: 12
  type: string
- doc: ''
  id: find
  inputBinding:
    position: 13
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 14
  type: string
- doc: ''
  id: maker
  inputBinding:
    position: 15
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 16
  type: string
