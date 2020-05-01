#!/usr/bin/env cwl-runner

baseCommand:
- msdiff
class: CommandLineTool
cwlVersion: v1.0
id: msdiff
inputs:
- doc: ''
  id: filename_1
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: filename_2
  inputBinding:
    position: 1
  type: File
- doc: '[ --precision ] arg (=9.9999999999999995e-07) : set floating point precision
    for  comparing binary data'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --ignore ]                       : ignore metadata (compare scan binary  data
    and important scan metadata only)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
