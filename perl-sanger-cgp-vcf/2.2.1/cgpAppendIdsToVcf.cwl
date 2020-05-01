#!/usr/bin/env cwl-runner

baseCommand:
- cgpAppendIdsToVcf.pl
class: CommandLineTool
cwlVersion: v1.0
id: cgpappendidstovcf.pl
inputs:
- doc: (-g)       Will set a sequential id generator to the given integer value. If
    not present will assign UUIDs to each variant.
  id: id_start
  inputBinding:
    prefix: --idstart
  type: boolean
