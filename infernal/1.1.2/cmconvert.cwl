#!/usr/bin/env cwl-runner

baseCommand:
- cmconvert
class: CommandLineTool
cwlVersion: v1.0
id: cmconvert
inputs:
- doc: ': save CM file to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output maximum likelihood HMM for CM in HMMER3 format'
  id: ml_hmm
  inputBinding:
    prefix: --mlhmm
  type: boolean
- doc: ': output filter HMM for CM in HMMER3 format'
  id: f_hmm
  inputBinding:
    prefix: --fhmm
  type: boolean
