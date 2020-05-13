class: CommandLineTool
id: dlcpar.cwl
inputs:
- id: dlc_par
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: phylogenetic
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: program
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: finding
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: most
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: parsimonious
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: gene
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 11
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
- id: l_map
  doc: gene to locus map (species-specific)
  type: string
  inputBinding:
    prefix: --lmap
- id: n_samples
  doc: 'number of uniform samples (default: 1)'
  type: string
  inputBinding:
    prefix: --nsamples
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
- id: no_prescreen
  doc: set to disable prescreen of locus maps
  type: boolean
  inputBinding:
    prefix: --no_prescreen
- id: prescreen_min
  doc: 'prescreen locus maps if min (forward) cost exceeds this value (default: 50)'
  type: string
  inputBinding:
    prefix: --prescreen_min
- id: prescreen_factor
  doc: 'prescreen locus maps if (forward) cost exceeds this factor * min (forward)
    cost (default: 10)'
  type: string
  inputBinding:
    prefix: --prescreen_factor
- id: max_loci
  doc: '=<max # of loci> maximum # of co-existing loci (in each ancestral species),
    set to -1 for no limit (default: -1)'
  type: boolean
  inputBinding:
    prefix: --max_loci
- id: max_dups
  doc: '=<max # of dups> maximum # of duplications (in each ancestral species), set
    to -1 for no limit (default: 4)'
  type: boolean
  inputBinding:
    prefix: --max_dups
- id: max_losses
  doc: '=<max # of losses> maximum # of losses (in each ancestral species), set to
    -1 for no limit (default: 4)'
  type: boolean
  inputBinding:
    prefix: --max_losses
- id: allow_both
  doc: set to allow duplications on both children
  type: boolean
  inputBinding:
    prefix: --allow_both
- id: seed
  doc: random number seed
  type: string
  inputBinding:
    prefix: --seed
- id: output_format
  doc: '=[dlcpar|dlcoal] specify output format (default: dlcpar)'
  type: boolean
  inputBinding:
    prefix: --output_format
- id: log
  doc: if given, output debugging log
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- dlcpar
