#!/usr/bin/env cwl-runner

baseCommand:
- eland2tags.pl
class: CommandLineTool
cwlVersion: v1.0
id: eland2tags.pl
inputs:
- doc: <0,1,2> (Max mismatches, default=2)
  id: mis
  inputBinding:
    prefix: -mis
  type: boolean
- doc: '# (only consider mismatches within the first # bp of sequence [for eland_extended]-def:
    32)'
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: <#> (Max matches to genome for multiple eland format, default=1)
  id: uniq
  inputBinding:
    prefix: -uniq
  type: boolean
- doc: (include sequence with tag)
  id: seq
  inputBinding:
    prefix: -seq
  type: boolean
- doc: (include a single version of nonuniq tags, bowtie only)
  id: non_uniq
  inputBinding:
    prefix: -nonuniq
  type: boolean
