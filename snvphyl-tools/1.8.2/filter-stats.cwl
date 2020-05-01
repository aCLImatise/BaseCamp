#!/usr/bin/env cwl-runner

baseCommand:
- filter-stats.pl
class: CommandLineTool
cwlVersion: v1.0
id: filter-stats.pl
inputs:
- doc: ''
  id: filter_stats_pl
  inputBinding:
    position: 0
  type: string
- doc: The psudo-alignment positions tab delimited file
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: When this option is set, the results will include all the entries marked as
    'filtered-invalid'
  id: all
  inputBinding:
    prefix: --all
  type: boolean
