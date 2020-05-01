#!/usr/bin/env cwl-runner

baseCommand:
- EvoFoldV2
class: CommandLineTool
cwlVersion: v1.0
id: evofoldv2
inputs:
- doc: ''
  id: ev_of_old
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: al_gama
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: tree_neiw_ck
  inputBinding:
    position: 2
  type: string
- doc: '[ --configFilePath ] arg (=./) Path to EvoFold configuration files.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --completeFile ] arg         Output complete structure predictions for  each
    input element in addition to the  sub-structures.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: "[ --annoName ] arg             Name of annotation to use (see annoMap file\
    \ for definition of annotation symbols. Note  that '*' can be used as wildcard.\
    \  Specifying annotation is useful for adding  constraints on the predicted structure."
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: (=5)               Output precision of score.
  id: decimals
  inputBinding:
    prefix: --decimals
  type: string
- doc: '[ --outputFile ] arg (=-)      Output file (default is stdout).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
