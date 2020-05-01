#!/usr/bin/env cwl-runner

baseCommand:
- getAbundance
class: CommandLineTool
cwlVersion: v1.0
id: getabundance
inputs:
- doc: '.csv <result2>.csv ... <result_n>.csv -a <minAbundance> ... '
  id: c
  inputBinding:
    prefix: -c
  type: long
