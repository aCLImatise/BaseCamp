#!/usr/bin/env cwl-runner

baseCommand:
- dlcpar_search
class: CommandLineTool
cwlVersion: v1.0
id: dlcpar_search
inputs:
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
- doc: set to ignore extra lineages at implied speciation nodes
  id: explicit
  inputBinding:
    prefix: --explicit
  type: boolean
- doc: '<# iterations>, --iter=<# iterations> number of search iterations (default:
    10)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '=<# prescreens> number of prescreening iterations (default: 20)'
  id: n_prescreen
  inputBinding:
    prefix: --nprescreen
  type: boolean
- doc: initial locus tree for search
  id: in_it_locus_tree
  inputBinding:
    prefix: --init-locus-tree
  type: string
- doc: random number seed
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: if given, output debugging log
  id: log
  inputBinding:
    prefix: --log
  type: boolean
