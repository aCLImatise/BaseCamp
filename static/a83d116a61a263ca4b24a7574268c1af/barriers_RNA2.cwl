class: CommandLineTool
id: barriers_RNA2.cwl
inputs:
- id: p
  doc: point mutation (default)
  type: string
  inputBinding:
    position: 0
- id: c
  doc: flip 2nd half
  type: string
  inputBinding:
    position: 1
- id: nni
  doc: NNI moves [no other options yet]
  type: string
  inputBinding:
    position: 0
- id: p
  doc: Permutations
  type: string
  inputBinding:
    position: 1
- id: t
  doc: Transpositions [default]
  type: string
  inputBinding:
    position: 2
- id: c
  doc: Canonical Transpositions
  type: string
  inputBinding:
    position: 3
- id: r
  doc: Reversals
  type: string
  inputBinding:
    position: 4
- id: x
  doc: Exchange Moves on balances +/- strings
  type: string
  inputBinding:
    position: 5
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: quiet
  doc: be quiet, inhibit PS output  (default=off)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: print more information  (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: graph
  doc: define graph type  (default=`RNA')
  type: string
  inputBinding:
    prefix: --graph
- id: moves
  doc: select move-set (if Graph allows several different ones)
  type: string
  inputBinding:
    prefix: --moves
- id: b_size
  doc: print basin sizes  (default=off)
  type: boolean
  inputBinding:
    prefix: --bsize
- id: s_size
  doc: print saddle component sizes  (default=off)
  type: boolean
  inputBinding:
    prefix: --ssize
- id: max
  doc: compute only the lowest <num> local minima (default=`100')
  type: long
  inputBinding:
    prefix: --max
- id: minh
  doc: print only minima with barrier > dE (default=`0.000001')
  type: string
  inputBinding:
    prefix: --minh
- id: saddle
  doc: print saddle point structures  (default=off)
  type: boolean
  inputBinding:
    prefix: --saddle
- id: rates
  doc: compute rates between macro states (basins) (default=off)
  type: boolean
  inputBinding:
    prefix: --rates
- id: poset
  doc: input is a poset from n objective functions (default=`0')
  type: long
  inputBinding:
    prefix: --poset
- id: path
  doc: =<l2>  backtrack path between lmins l2 and l1 (l1 < l2), can be specified multiple
    times
  type: string
  inputBinding:
    prefix: --path
- id: sb_map
  doc: 'FK: output map of structures and their respective basins  (default=off)'
  type: boolean
  inputBinding:
    prefix: --sbmap
- id: trans
  doc: 'FK: output a list of all transient structures and their neighbors  (default=off)'
  type: boolean
  inputBinding:
    prefix: --trans
outputs: []
cwlVersion: v1.1
baseCommand:
- barriers-RNA2
