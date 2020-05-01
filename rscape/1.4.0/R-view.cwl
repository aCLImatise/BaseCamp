#!/usr/bin/env cwl-runner

baseCommand:
- R-view
class: CommandLineTool
cwlVersion: v1.0
id: r-view
inputs:
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': max distance for contact definition  [8.0]  (x>0)'
  id: maxd
  inputBinding:
    prefix: --maxD
  type: string
- doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  id: min_l
  inputBinding:
    prefix: --minL
  type: string
- doc: ': Minimum distance btw any two atoms (except water)  [TRUE]'
  id: min
  inputBinding:
    prefix: --MIN
  type: boolean
- doc: ': Distance btw beta Carbors (alphaC for Gly)'
  id: cb
  inputBinding:
    prefix: --CB
  type: boolean
- doc: ': TRUE to calculate inter-chain contacts'
  id: inter
  inputBinding:
    prefix: --inter
  type: boolean
- doc: ': send output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': tolerance  [1e-6]'
  id: to_l
  inputBinding:
    prefix: --tol
  type: string
- doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
