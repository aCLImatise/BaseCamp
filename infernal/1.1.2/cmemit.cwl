#!/usr/bin/env cwl-runner

baseCommand:
- cmemit
class: CommandLineTool
cwlVersion: v1.0
id: cmemit
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ': send sequence output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': generate <n> sequences  [10]'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': write generated sequences as unaligned FASTA [default]  [default]'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ': write generated sequences as an alignment'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': generate a single "consensus" sequence only'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': embed emitted sequences within larger random sequences of length <n>'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ': local; emit from a locally configured model [default: global]'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ": truncate unaligned sequences 5', choosing a random start posn"
  id: u5p
  inputBinding:
    prefix: --u5p
  type: boolean
- doc: ": truncate unaligned sequences 3', choosing a random end   posn"
  id: u3p
  inputBinding:
    prefix: --u3p
  type: boolean
- doc: ": truncate aln 5', start at match column <n> (use 0 for random posn)"
  id: a5p
  inputBinding:
    prefix: --a5p
  type: string
- doc: ": truncate aln 3', end   at match column <n> (use 0 for random posn)"
  id: a3p
  inputBinding:
    prefix: --a3p
  type: string
- doc: ': set RNG seed to <n> [default: one-time arbitrary seed]  [0]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': with -e, generate larger sequences as 25% ACGU (iid) '
  id: iid
  inputBinding:
    prefix: --iid
  type: boolean
- doc: ': output as RNA sequence data  [default]'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': output as DNA sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': start sequence numbering at <n>  [1]'
  id: idx
  inputBinding:
    prefix: --idx
  type: string
- doc: ': w/-a output alignment in format <s>  [Stockholm]'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': dump parsetrees to file <f>'
  id: t_file
  inputBinding:
    prefix: --tfile
  type: string
- doc: ': exponentiate CM probabilities by <x> before emitting'
  id: exp
  inputBinding:
    prefix: --exp
  type: string
- doc: ': emit from filter HMM, not from CM'
  id: hmm_only
  inputBinding:
    prefix: --hmmonly
  type: boolean
- doc: ': always emit from CM, even for models with 0 basepairs'
  id: no_hmm_only
  inputBinding:
    prefix: --nohmmonly
  type: boolean
