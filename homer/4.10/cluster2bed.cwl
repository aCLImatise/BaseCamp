#!/usr/bin/env cwl-runner

baseCommand:
- cluster2bed.pl
class: CommandLineTool
cwlVersion: v1.0
id: cluster2bed.pl
inputs:
- doc: '<#> (resolution used to create the file, default: auto detect)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (minimum % of regions in a cluster to include, default: 0.01) (i.e. do
    not output clusters containing fewer than x percent of the data'
  id: min_p
  inputBinding:
    prefix: -minp
  type: boolean
- doc: (track name for UCSC)
  id: name
  inputBinding:
    prefix: -name
  type: string
