#!/usr/bin/env cwl-runner

baseCommand:
- fmlrc-convert
class: CommandLineTool
cwlVersion: v1.0
id: fmlrc-convert
inputs:
- doc: ''
  id: out_comp_mb_swt_npy
  inputBinding:
    position: 0
  type: string
- doc: print version number and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: 'force overwrite of existing file (default: false)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'the plain text BWT file to be converted into msbwt format (default: stdin)'
  id: i
  inputBinding:
    prefix: -i
  type: string
