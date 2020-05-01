#!/usr/bin/env cwl-runner

baseCommand:
- GraphProt.pl
class: CommandLineTool
cwlVersion: v1.0
id: graphprot.pl
inputs:
- doc: "'regression' or 'classification' default: classification"
  id: mode
  inputBinding:
    prefix: -mode
  type: boolean
- doc: 'what should GraphProt do? ls: optimize parameters cv: run a crossvalidation
    train: train a model predict: predict binding for a whole site predict_profile:
    predict binding profiles predict_has: predict high-affinity sites motif: create
    sequence and structure motifs given a model'
  id: action
  inputBinding:
    prefix: -action
  type: boolean
- doc: use GraphProt sequence models
  id: only_seq
  inputBinding:
    prefix: -onlyseq
  type: boolean
- doc: 'this prefix is used for all results default: GraphProt'
  id: prefix
  inputBinding:
    prefix: -prefix
  type: boolean
- doc: GraphProt model
  id: model
  inputBinding:
    prefix: -model
  type: boolean
- doc: fasta file containing binding sites
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: boolean
- doc: full documentation
  id: man
  inputBinding:
    prefix: -man
  type: boolean
- doc: parameter config file created by -action ls, alternatively use the following
    options to manually enter the desired parameters
  id: params
  inputBinding:
    prefix: -params
  type: boolean
- doc: 'GraphProt radius default: 1'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: 'GraphProt distance default: 4'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: 'GraphProt bitsize used for feature encoding default: 14'
  id: bit_size
  inputBinding:
    prefix: -bitsize
  type: boolean
- doc: fasta file containing negative class sequences
  id: neg_fast_a
  inputBinding:
    prefix: -negfasta
  type: boolean
- doc: 'SGD parameter lambda  [classification] default: 10e-4'
  id: lambda
  inputBinding:
    prefix: -lambda
  type: boolean
- doc: 'SGD parameter epochs  [classification] default: 10'
  id: epochs
  inputBinding:
    prefix: -epochs
  type: boolean
- doc: list of affinities one value per line, same order as binding sites (fasta)
  id: affinities
  inputBinding:
    prefix: -affinities
  type: boolean
- doc: 'SVR parameter c       [regression] default: 1'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: 'SVR parameter epsilon [regression] default: 0.1'
  id: epsilon
  inputBinding:
    prefix: -epsilon
  type: boolean
- doc: 'keep only regions with average score above a percentile as high-affinity sites
    default: 99'
  id: percentile
  inputBinding:
    prefix: -percentile
  type: boolean
- doc: 'set length of motifs (default: 12)'
  id: motif_len
  inputBinding:
    prefix: -motif_len
  type: boolean
- doc: 'use n top-scoring subsequences for motif creation (default: 1000)'
  id: motif_top_n
  inputBinding:
    prefix: -motif_top_n
  type: string
