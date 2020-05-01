#!/usr/bin/env cwl-runner

baseCommand:
- seqdiff
class: CommandLineTool
cwlVersion: v1.0
id: seqdiff
inputs:
- doc: ',   File name for uniques from first file'
  id: a_output
  inputBinding:
    prefix: --a_output
  type: boolean
- doc: ',   File name for uniques from second file'
  id: b_output
  inputBinding:
    prefix: --b_output
  type: boolean
- doc: ',   File name for common entries'
  id: c_output
  inputBinding:
    prefix: --c_output
  type: boolean
- doc: ',    Compare headers instead of sequences (default: false)'
  id: headers
  inputBinding:
    prefix: --headers
  type: boolean
- doc: ', Just show summary stats? (default: false)'
  id: summary
  inputBinding:
    prefix: --summary
  type: boolean
- doc: ',    Print extra details during the run'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
