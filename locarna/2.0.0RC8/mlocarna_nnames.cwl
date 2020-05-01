#!/usr/bin/env cwl-runner

baseCommand:
- mlocarna_nnames
class: CommandLineTool
cwlVersion: v1.0
id: mlocarna_nnames
inputs:
- doc: ''
  id: fast_a_file
  inputBinding:
    position: 0
  type: string
- doc: Full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
