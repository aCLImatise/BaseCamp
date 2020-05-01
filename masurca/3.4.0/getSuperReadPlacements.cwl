#!/usr/bin/env cwl-runner

baseCommand:
- getSuperReadPlacements.perl
class: CommandLineTool
cwlVersion: v1.0
id: getsuperreadplacements.perl
inputs:
- doc: input directory
  id: dir
  inputBinding:
    prefix: -dir
  type: string
- doc: (default = 5)
  id: mina_stat
  inputBinding:
    prefix: -minAStat
  type: boolean
- doc: (default = 200) (to avoid edge effects)
  id: min_from_end
  inputBinding:
    prefix: -minFromEnd
  type: boolean
- doc: (default = 2000)
  id: shortest_unit_ig_length
  inputBinding:
    prefix: -shortestUnitigLength
  type: boolean
- doc: (defaults to $dir/work1)
  id: super_readdir
  inputBinding:
    prefix: -superReadDir
  type: boolean
- doc: (defaults to $dir/CA)
  id: ca_dir
  inputBinding:
    prefix: -CADir
  type: boolean
- doc: help
  id: h
  inputBinding:
    prefix: -h
  type: string
