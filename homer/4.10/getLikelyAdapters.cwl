#!/usr/bin/env cwl-runner

baseCommand:
- getLikelyAdapters.pl
class: CommandLineTool
cwlVersion: v1.0
id: getlikelyadapters.pl
inputs:
- doc: '<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)'
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: '<#> (Number of reads to check for overrepresented oligos, default: 1e5)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '<#> (number of overrepresented oligos to report, default: 10)'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '<#> (position to start looking for oligos, default: 0)'
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: '<#> (last position to look for oligos, default: end of sequence)'
  id: end
  inputBinding:
    prefix: -end
  type: boolean
