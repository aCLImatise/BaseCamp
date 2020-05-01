#!/usr/bin/env cwl-runner

baseCommand:
- batchFindMotifs.pl
class: CommandLineTool
cwlVersion: v1.0
id: batchfindmotifs.pl
inputs:
- doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
