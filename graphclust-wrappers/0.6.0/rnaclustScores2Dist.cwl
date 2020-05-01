#!/usr/bin/env cwl-runner

baseCommand:
- rnaclustScores2Dist.pl
class: CommandLineTool
cwlVersion: v1.0
id: rnaclustscores2dist.pl
inputs:
- doc: full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: be verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: be quiet
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: the quantile
  id: quantile
  inputBinding:
    prefix: --quantile
  type: boolean
