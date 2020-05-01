#!/usr/bin/env cwl-runner

baseCommand:
- meltEHH
class: CommandLineTool
cwlVersion: v1.0
id: meltehh
inputs:
- doc: ':1-1000 > STDOUT 2> STDERR          '
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
