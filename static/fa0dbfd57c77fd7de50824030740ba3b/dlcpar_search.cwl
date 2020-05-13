class: CommandLineTool
id: dlcpar_search.cwl
inputs:
- id: stree
  doc: species tree file in newick format
  type: string
  inputBinding:
    prefix: --stree
- id: s_map
  doc: gene to species map
  type: string
  inputBinding:
    prefix: --smap
- id: input_ext
  doc: 'input file extension (default: "")'
  type: string
  inputBinding:
    prefix: --inputext
- id: output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: string
  inputBinding:
    prefix: --outputext
- id: dup_cost
  doc: 'duplication cost (default: 1.0)'
  type: string
  inputBinding:
    prefix: --dupcost
- id: loss_cost
  doc: 'loss cost (default: 1.0)'
  type: string
  inputBinding:
    prefix: --losscost
- id: coal_cost
  doc: 'deep coalescence cost (default: 0.5)'
  type: string
  inputBinding:
    prefix: --coalcost
- id: explicit
  doc: set to ignore extra lineages at implied speciation nodes
  type: boolean
  inputBinding:
    prefix: --explicit
- id: i
  doc: '<# iterations>, --iter=<# iterations> number of search iterations (default:
    10)'
  type: boolean
  inputBinding:
    prefix: -i
- id: n_prescreen
  doc: '=<# prescreens> number of prescreening iterations (default: 20)'
  type: boolean
  inputBinding:
    prefix: --nprescreen
- id: in_it_locus_tree
  doc: initial locus tree for search
  type: string
  inputBinding:
    prefix: --init-locus-tree
- id: seed
  doc: random number seed
  type: string
  inputBinding:
    prefix: --seed
- id: log
  doc: if given, output debugging log
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- dlcpar_search
