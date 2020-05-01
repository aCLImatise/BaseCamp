#!/usr/bin/env cwl-runner

baseCommand:
- locarna_rnafold_pp
class: CommandLineTool
cwlVersion: v1.0
id: locarna_rnafold_pp
inputs:
- doc: Force alifold for single sequences
  id: force_ali_fold
  inputBinding:
    prefix: --force-alifold
  type: boolean
