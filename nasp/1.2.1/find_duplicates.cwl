#!/usr/bin/env cwl-runner

baseCommand:
- find_duplicates
class: CommandLineTool
cwlVersion: v1.0
id: find_duplicates
inputs:
- doc: ''
  id: nuc_me_rpath
  inputBinding:
    prefix: --nucmerpath
  type: string
- doc: ''
  id: reference
  inputBinding:
    prefix: --reference
  type: string
