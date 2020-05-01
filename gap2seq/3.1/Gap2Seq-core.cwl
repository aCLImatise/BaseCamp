#!/usr/bin/env cwl-runner

baseCommand:
- Gap2Seq-core
class: CommandLineTool
cwlVersion: v1.0
id: gap2seq-core
inputs:
- doc: "(1 arg) :    Length of a single gap  [default '']"
  id: length
  inputBinding:
    prefix: -length
  type: boolean
- doc: "(1 arg) :    Right flank of a single gap  [default '']"
  id: right
  inputBinding:
    prefix: -right
  type: boolean
- doc: "(1 arg) :    Left flank of a single gap  [default '']"
  id: left
  inputBinding:
    prefix: -left
  type: boolean
- doc: "(1 arg) :    Random seed (0 to use current time)  [default '0']"
  id: rand_seed
  inputBinding:
    prefix: -randseed
  type: boolean
- doc: '(0 arg) :    If specified, only gaps with a unique path of best length are
    filled.'
  id: unique
  inputBinding:
    prefix: -unique
  type: boolean
- doc: '(0 arg) :    If specified, only paths that have optimal length are considered.'
  id: best_only
  inputBinding:
    prefix: -best-only
  type: boolean
- doc: '(0 arg) :    If specified, all filled bases are in upper case.'
  id: all_upper
  inputBinding:
    prefix: -all-upper
  type: boolean
- doc: "(1 arg) :    Maximum memory usage of DP table computation in gigabytes (excluding\
    \ DBG)  [default '20']"
  id: max_mem
  inputBinding:
    prefix: -max-mem
  type: boolean
- doc: "(1 arg) :    Number of nucleotides to ignore on gap fringes  [default '10']"
  id: fuz
  inputBinding:
    prefix: -fuz
  type: boolean
- doc: "(1 arg) :    Maximum error in gap estimates  [default '500']"
  id: dist_error
  inputBinding:
    prefix: -dist-error
  type: boolean
- doc: '(1 arg) :    FASTA file of filled scaffolds'
  id: filled
  inputBinding:
    prefix: -filled
  type: boolean
- doc: "(1 arg) :    FASTA/Q file of scaffolds  [default '']"
  id: scaffolds
  inputBinding:
    prefix: -scaffolds
  type: boolean
- doc: '(1 arg) :    FASTA/Q files of reads. For several files use a comma separated
    list.'
  id: reads
  inputBinding:
    prefix: -reads
  type: boolean
- doc: "(1 arg) :    Threshold for solid k-mers  [default '2']"
  id: solid
  inputBinding:
    prefix: -solid
  type: boolean
- doc: "(1 arg) :    k-mer length  [default '31']"
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '(0 arg) :    version'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
