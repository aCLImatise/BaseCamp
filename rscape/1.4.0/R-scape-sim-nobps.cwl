#!/usr/bin/env cwl-runner

baseCommand:
- R-scape-sim-nobps
class: CommandLineTool
cwlVersion: v1.0
id: r-scape-sim-nobps
inputs:
- doc: ''
  id: that
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: remove
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: not
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: annotated
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: ss
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: correlations
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: msa
  inputBinding:
    position: 6
  type: string
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': specify format'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': specify a directory for all output files'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: ': send output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': if file has more than one msa, analyze only the first one'
  id: one_msa
  inputBinding:
    prefix: --onemsa
  type: boolean
