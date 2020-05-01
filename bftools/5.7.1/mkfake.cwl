#!/usr/bin/env cwl-runner

baseCommand:
- mkfake
class: CommandLineTool
cwlVersion: v1.0
id: mkfake
inputs:
- doc: ': number of plates (default: 1)'
  id: plates
  inputBinding:
    prefix: -plates
  type: boolean
- doc: ': number of plate runs (acquisitions) (default: 1)'
  id: runs
  inputBinding:
    prefix: -runs
  type: boolean
- doc: ': number of rows in a plate (default: 1)'
  id: rows
  inputBinding:
    prefix: -rows
  type: boolean
- doc: ': number of columns in a plate (default: 1)'
  id: columns
  inputBinding:
    prefix: -columns
  type: boolean
- doc: ': number of fields in a plate (default: 1)'
  id: fields
  inputBinding:
    prefix: -fields
  type: boolean
- doc: ': turn on debugging output'
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
