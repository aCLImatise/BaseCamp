#!/usr/bin/env cwl-runner

baseCommand:
- hmmemit
class: CommandLineTool
cwlVersion: v1.0
id: hmmemit
inputs:
- doc: ': send sequence output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': number of seqs to sample  [1]  (n>0)'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': emit alignment'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': emit simple majority-rule consensus sequence'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ": emit fancier consensus sequence (req's --minl, --minu)"
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: ': sample sequences from profile, not core model'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': set expected length from profile to <n>  [400]'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ': configure profile in multihit local mode  [default]'
  id: local
  inputBinding:
    prefix: --local
  type: boolean
- doc: ': configure profile in unilocal mode'
  id: uni_local
  inputBinding:
    prefix: --unilocal
  type: boolean
- doc: ': configure profile in multihit glocal mode'
  id: g_local
  inputBinding:
    prefix: --glocal
  type: boolean
- doc: ': configure profile in unihit glocal mode'
  id: unig_local
  inputBinding:
    prefix: --uniglocal
  type: boolean
- doc: ": show consensus as 'any' (X/N) unless >= this fraction  [0.0]"
  id: min_l
  inputBinding:
    prefix: --minl
  type: string
- doc: ': show consensus as upper case if >= this fraction  [0.0]'
  id: minu
  inputBinding:
    prefix: --minu
  type: string
- doc: ': set RNG seed to <n>  [0]  (n>=0)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
