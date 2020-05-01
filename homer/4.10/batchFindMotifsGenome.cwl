#!/usr/bin/env cwl-runner

baseCommand:
- batchFindMotifsGenome.pl
class: CommandLineTool
cwlVersion: v1.0
id: batchfindmotifsgenome.pl
inputs:
- doc: <#> (Will only analyze promoter-distal regions ># away from TSS)
  id: dist
  inputBinding:
    prefix: -dist
  type: boolean
- doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
