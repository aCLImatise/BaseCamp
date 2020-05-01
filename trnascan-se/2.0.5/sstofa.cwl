#!/usr/bin/env cwl-runner

baseCommand:
- sstofa
class: CommandLineTool
cwlVersion: v1.0
id: sstofa
inputs:
- doc: ''
  id: sec_struct_file
  inputBinding:
    position: 0
  type: string
