#!/usr/bin/env cwl-runner

baseCommand:
- dlcpar
class: CommandLineTool
cwlVersion: v1.0
id: dlcpar
inputs:
- doc: ''
  id: dlc_par
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: is
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: phylogenetic
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: program
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: for
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: finding
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: most
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: parsimonious
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: gene
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: tree
  inputBinding:
    position: 11
  type: string
- doc: species tree file in newick format
  id: stree
  inputBinding:
    prefix: --stree
  type: string
- doc: gene to species map
  id: s_map
  inputBinding:
    prefix: --smap
  type: string
- doc: gene to locus map (species-specific)
  id: l_map
  inputBinding:
    prefix: --lmap
  type: string
- doc: 'number of uniform samples (default: 1)'
  id: n_samples
  inputBinding:
    prefix: --nsamples
  type: string
- doc: 'input file extension (default: "")'
  id: input_ext
  inputBinding:
    prefix: --inputext
  type: string
- doc: 'output file extension (default: ".dlcpar")'
  id: output_ext
  inputBinding:
    prefix: --outputext
  type: string
- doc: 'duplication cost (default: 1.0)'
  id: dup_cost
  inputBinding:
    prefix: --dupcost
  type: string
- doc: 'loss cost (default: 1.0)'
  id: loss_cost
  inputBinding:
    prefix: --losscost
  type: string
- doc: 'deep coalescence cost (default: 0.5)'
  id: coal_cost
  inputBinding:
    prefix: --coalcost
  type: string
- doc: set to disable prescreen of locus maps
  id: no_prescreen
  inputBinding:
    prefix: --no_prescreen
  type: boolean
- doc: 'prescreen locus maps if min (forward) cost exceeds this value (default: 50)'
  id: prescreen_min
  inputBinding:
    prefix: --prescreen_min
  type: string
- doc: 'prescreen locus maps if (forward) cost exceeds this factor * min (forward)
    cost (default: 10)'
  id: prescreen_factor
  inputBinding:
    prefix: --prescreen_factor
  type: string
- doc: '=<max # of loci> maximum # of co-existing loci (in each ancestral species),
    set to -1 for no limit (default: -1)'
  id: max_loci
  inputBinding:
    prefix: --max_loci
  type: boolean
- doc: '=<max # of dups> maximum # of duplications (in each ancestral species), set
    to -1 for no limit (default: 4)'
  id: max_dups
  inputBinding:
    prefix: --max_dups
  type: boolean
- doc: '=<max # of losses> maximum # of losses (in each ancestral species), set to
    -1 for no limit (default: 4)'
  id: max_losses
  inputBinding:
    prefix: --max_losses
  type: boolean
- doc: set to allow duplications on both children
  id: allow_both
  inputBinding:
    prefix: --allow_both
  type: boolean
- doc: random number seed
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: '=[dlcpar|dlcoal] specify output format (default: dlcpar)'
  id: output_format
  inputBinding:
    prefix: --output_format
  type: boolean
- doc: if given, output debugging log
  id: log
  inputBinding:
    prefix: --log
  type: boolean
