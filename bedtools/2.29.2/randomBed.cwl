#!/usr/bin/env cwl-runner

baseCommand:
- randomBed
class: CommandLineTool
cwlVersion: v1.0
id: randombed
inputs:
- doc: '4262'
  id: chr18_gl000207_random
  inputBinding:
    position: 0
  type: string
- doc: The length of the intervals to generate. - Default = 100. - (INTEGER)
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: The number of intervals to generate. - Default = 1,000,000. - (INTEGER)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Supply an integer seed for the shuffling. - By default, the seed is chosen
    automatically. - (INTEGER)
  id: seed
  inputBinding:
    prefix: -seed
  type: boolean
