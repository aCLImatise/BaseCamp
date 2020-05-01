#!/usr/bin/env cwl-runner

baseCommand:
- cdbfasta
class: CommandLineTool
cwlVersion: v1.0
id: cdbfasta
inputs:
- doc: program version and exit
  id: v
  inputBinding:
    prefix: -v
  type: string
