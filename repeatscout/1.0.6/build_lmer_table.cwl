#!/usr/bin/env cwl-runner

baseCommand:
- build_lmer_table
class: CommandLineTool
cwlVersion: v1.0
id: build_lmer_table
inputs:
- doc: '--- tandem distance window (def: 500)'
  id: tandem
  inputBinding:
    prefix: -tandem
  type: string
- doc: '<#> --- smallest number of required lmers (def: 3)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '--- output a small amount of debugging information.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
