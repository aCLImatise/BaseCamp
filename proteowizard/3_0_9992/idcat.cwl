#!/usr/bin/env cwl-runner

baseCommand:
- idcat
class: CommandLineTool
cwlVersion: v1.0
id: idcat
inputs:
- doc: ''
  id: file_masks
  inputBinding:
    position: 0
  type: File
- doc: ': comma separated list of fields to display'
  id: fields
  inputBinding:
    prefix: --fields
  type: string
- doc: '[ --force ]        : overwrite file if it exists.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --sort ] arg     : sort by (single) column'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --output ] arg   : output filename or directory (for multiple files).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --verbose ]      : prints extra information.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
