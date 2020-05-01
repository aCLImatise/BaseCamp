#!/usr/bin/env cwl-runner

baseCommand:
- nice
class: CommandLineTool
cwlVersion: v1.0
id: nice
inputs:
- doc: add integer N to the niceness (default 10)
  id: adjustment
  inputBinding:
    prefix: --adjustment
  type: string
