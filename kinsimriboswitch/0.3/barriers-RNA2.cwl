#!/usr/bin/env cwl-runner

baseCommand:
- barriers-RNA2
class: CommandLineTool
cwlVersion: v1.0
id: barriers-rna2
inputs:
- doc: point mutation (default)
  id: p
  inputBinding:
    position: 0
  type: string
- doc: flip 2nd half
  id: c
  inputBinding:
    position: 1
  type: string
- doc: NNI moves [no other options yet]
  id: nni
  inputBinding:
    position: 0
  type: string
- doc: Permutations
  id: p
  inputBinding:
    position: 1
  type: string
- doc: Transpositions [default]
  id: t
  inputBinding:
    position: 2
  type: string
- doc: Canonical Transpositions
  id: c
  inputBinding:
    position: 3
  type: string
- doc: Reversals
  id: r
  inputBinding:
    position: 4
  type: string
- doc: Exchange Moves on balances +/- strings
  id: x
  inputBinding:
    position: 5
  type: string
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: be quiet, inhibit PS output  (default=off)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: print more information  (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: define graph type  (default=`RNA')
  id: graph
  inputBinding:
    prefix: --graph
  type: string
- doc: select move-set (if Graph allows several different ones)
  id: moves
  inputBinding:
    prefix: --moves
  type: string
- doc: print basin sizes  (default=off)
  id: b_size
  inputBinding:
    prefix: --bsize
  type: boolean
- doc: print saddle component sizes  (default=off)
  id: s_size
  inputBinding:
    prefix: --ssize
  type: boolean
- doc: compute only the lowest <num> local minima (default=`100')
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: print only minima with barrier > dE (default=`0.000001')
  id: minh
  inputBinding:
    prefix: --minh
  type: string
- doc: print saddle point structures  (default=off)
  id: saddle
  inputBinding:
    prefix: --saddle
  type: boolean
- doc: compute rates between macro states (basins) (default=off)
  id: rates
  inputBinding:
    prefix: --rates
  type: boolean
- doc: input is a poset from n objective functions (default=`0')
  id: poset
  inputBinding:
    prefix: --poset
  type: long
- doc: =<l2>  backtrack path between lmins l2 and l1 (l1 < l2), can be specified multiple
    times
  id: path
  inputBinding:
    prefix: --path
  type: string
- doc: 'FK: output map of structures and their respective basins  (default=off)'
  id: sb_map
  inputBinding:
    prefix: --sbmap
  type: boolean
- doc: 'FK: output a list of all transient structures and their neighbors  (default=off)'
  id: trans
  inputBinding:
    prefix: --trans
  type: boolean
