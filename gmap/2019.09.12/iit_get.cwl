#!/usr/bin/env cwl-runner

baseCommand:
- iit_get
class: CommandLineTool
cwlVersion: v1.0
id: iit_get
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: i_it_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: query
  inputBinding:
    position: 2
  type: string
- doc: Show given field part of the annotation
  id: field
  inputBinding:
    prefix: --field
  type: string
- doc: Interpret query or queries as a label, even if it is numeric
  id: label
  inputBinding:
    prefix: --label
  type: boolean
- doc: Interpret query or queries as coords
  id: coords
  inputBinding:
    prefix: --coords
  type: boolean
- doc: Show annotation lines only (no headers)
  id: an_not_only
  inputBinding:
    prefix: --annotonly
  type: boolean
- doc: Sort results by coordinates
  id: sort
  inputBinding:
    prefix: --sort
  type: boolean
- doc: Print all intervals as low..high, even those entered as reverse (high < low)
  id: unsigned
  inputBinding:
    prefix: --unsigned
  type: boolean
- doc: Show flanking segments on left and right
  id: flanking
  inputBinding:
    prefix: --flanking
  type: long
