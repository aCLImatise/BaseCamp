#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata_read_count_table
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata_read_count_table
inputs:
- doc: ''
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: ''
  id: output
  inputBinding:
    prefix: --output
  type: string
