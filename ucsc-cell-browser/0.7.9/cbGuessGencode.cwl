#!/usr/bin/env cwl-runner

baseCommand:
- cbGuessGencode
class: CommandLineTool
cwlVersion: v1.0
id: cbguessgencode
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: version
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: of
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: list
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: of
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: gene
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: ids
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: reads
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: first
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: tab_sep
  inputBinding:
    position: 11
  type: string
- doc: ''
  id: field
  inputBinding:
    position: 12
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 13
  type: string
- doc: ''
  id: filename
  inputBinding:
    position: 14
  type: File
- doc: ''
  id: and
  inputBinding:
    position: 15
  type: string
- doc: ''
  id: reports
  inputBinding:
    position: 16
  type: string
- doc: ''
  id: best
  inputBinding:
    position: 17
  type: string
- doc: ''
  id: gen_code
  inputBinding:
    position: 18
  type: string
- doc: ''
  id: version
  inputBinding:
    position: 19
  type: string
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
