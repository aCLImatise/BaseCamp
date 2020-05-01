#!/usr/bin/env cwl-runner

baseCommand:
- gmer_caller
class: CommandLineTool
cwlVersion: v1.0
id: gmer_caller
inputs:
- doc: ''
  id: arguments
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: counts_file
  inputBinding:
    position: 1
  type: string
- doc: markers for training (default 100000)
  id: training_size
  inputBinding:
    prefix: --training_size
  type: string
- doc: '- Perfom NUMBER runs of model training (use 0 for no training)'
  id: runs
  inputBinding:
    prefix: --runs
  type: string
- doc: '- Use NUM threads (min 1, max 32, default 16)'
  id: num_threads
  inputBinding:
    prefix: --num_threads
  type: string
- doc: '- Print table header'
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: '- Output non-canonical genotypes'
  id: non_canonical
  inputBinding:
    prefix: --non_canonical
  type: boolean
- doc: '- probability cutoff for calling genotype (default 0)'
  id: prob_cut_off
  inputBinding:
    prefix: --prob_cutoff
  type: boolean
- doc: '- Print probabilities of all alternative genotypes'
  id: alternatives
  inputBinding:
    prefix: --alternatives
  type: boolean
- doc: '- Print information about individual'
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: '- Print only summary information, not actual genotypes'
  id: no_genotypes
  inputBinding:
    prefix: --no_genotypes
  type: boolean
- doc: '- Model type (full, diploid, haploid)'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: '- Model parameters (error, p0, p1, p2, coverage, size, size2)'
  id: params
  inputBinding:
    prefix: --params
  type: string
- doc: '- Average coverage of reads'
  id: coverage
  inputBinding:
    prefix: --coverage
  type: string
- doc: '- increase debug level'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
