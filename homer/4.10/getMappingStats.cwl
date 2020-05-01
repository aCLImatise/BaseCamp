#!/usr/bin/env cwl-runner

baseCommand:
- getMappingStats.pl
class: CommandLineTool
cwlVersion: v1.0
id: getmappingstats.pl
inputs:
- doc: <#> (minimum length to consider a sequence an adapter-dimer, def. 15)
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: (limit analysis to alignment for this genome)
  id: genome
  inputBinding:
    prefix: -genome
  type: string
