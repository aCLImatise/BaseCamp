#!/usr/bin/env cwl-runner

baseCommand:
- complementBed
class: CommandLineTool
cwlVersion: v1.0
id: complementbed
inputs:
- doc: '4262'
  id: chr18_gl000207_random
  inputBinding:
    position: 0
  type: string
- doc: Limit output to solely the chromosomes with records in the input file.
  id: l
  inputBinding:
    prefix: -L
  type: boolean
