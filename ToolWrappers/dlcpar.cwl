class: CommandLineTool
id: dlcpar.cwl
inputs:
- id: in_stree
  doc: species tree file in newick format
  type: File
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: gene to species map
  type: string
  inputBinding:
    prefix: --smap
- id: in_l_map
  doc: gene to locus map (species-specific)
  type: string
  inputBinding:
    prefix: --lmap
- id: in_n_samples
  doc: 'number of uniform samples (default: 1)'
  type: long
  inputBinding:
    prefix: --nsamples
- id: in_input_ext
  doc: 'input file extension (default: "")'
  type: File
  inputBinding:
    prefix: --inputext
- id: in_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File
  inputBinding:
    prefix: --outputext
- id: in_dup_cost
  doc: 'duplication cost (default: 1.0)'
  type: double
  inputBinding:
    prefix: --dupcost
- id: in_loss_cost
  doc: 'loss cost (default: 1.0)'
  type: double
  inputBinding:
    prefix: --losscost
- id: in_coal_cost
  doc: 'deep coalescence cost (default: 0.5)'
  type: double
  inputBinding:
    prefix: --coalcost
- id: in_no_prescreen
  doc: set to disable prescreen of locus maps
  type: boolean
  inputBinding:
    prefix: --no_prescreen
- id: in_prescreen_min
  doc: "prescreen locus maps if min (forward) cost exceeds\nthis value (default: 50)"
  type: long
  inputBinding:
    prefix: --prescreen_min
- id: in_prescreen_factor
  doc: "prescreen locus maps if (forward) cost exceeds this\nfactor * min (forward)\
    \ cost (default: 10)"
  type: long
  inputBinding:
    prefix: --prescreen_factor
- id: in_max_loci
  doc: "=<max # of loci>\nmaximum # of co-existing loci (in each ancestral\nspecies),\
    \ set to -1 for no limit (default: -1)"
  type: boolean
  inputBinding:
    prefix: --max_loci
- id: in_max_dups
  doc: "=<max # of dups>\nmaximum # of duplications (in each ancestral species),\n\
    set to -1 for no limit (default: 4)"
  type: boolean
  inputBinding:
    prefix: --max_dups
- id: in_max_losses
  doc: "=<max # of losses>\nmaximum # of losses (in each ancestral species), set\n\
    to -1 for no limit (default: 4)"
  type: boolean
  inputBinding:
    prefix: --max_losses
- id: in_allow_both
  doc: set to allow duplications on both children
  type: boolean
  inputBinding:
    prefix: --allow_both
- id: in_seed
  doc: random number seed
  type: long
  inputBinding:
    prefix: --seed
- id: in_output_format
  doc: "=[dlcpar|dlcoal]\nspecify output format (default: dlcpar)"
  type: boolean
  inputBinding:
    prefix: --output_format
- id: in_log
  doc: if given, output debugging log
  type: boolean
  inputBinding:
    prefix: --log
- id: in_dlc_par
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_phylogenetic
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_finding
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_most
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_parsimonious
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File
  outputBinding:
    glob: $(inputs.in_output_ext)
cwlVersion: v1.1
baseCommand:
- dlcpar
