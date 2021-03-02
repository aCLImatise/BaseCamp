class: CommandLineTool
id: dlcpar_search.cwl
inputs:
- id: in_stree
  doc: species tree file in newick format
  type: File?
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: gene to species map
  type: string?
  inputBinding:
    prefix: --smap
- id: in_input_ext
  doc: 'input file extension (default: "")'
  type: File?
  inputBinding:
    prefix: --inputext
- id: in_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File?
  inputBinding:
    prefix: --outputext
- id: in_dup_cost
  doc: 'duplication cost (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --dupcost
- id: in_loss_cost
  doc: 'loss cost (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --losscost
- id: in_coal_cost
  doc: 'deep coalescence cost (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --coalcost
- id: in_explicit
  doc: set to ignore extra lineages at implied speciation
  type: boolean?
  inputBinding:
    prefix: --explicit
- id: in_iterations__iterationsnumber
  doc: "<# iterations>, --iter=<# iterations>\nnumber of search iterations (default:\
    \ 10)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_n_prescreen
  doc: "=<# prescreens>\nnumber of prescreening iterations (default: 20)"
  type: boolean?
  inputBinding:
    prefix: --nprescreen
- id: in_in_it_locus_tree
  doc: initial locus tree for search
  type: File?
  inputBinding:
    prefix: --init-locus-tree
- id: in_seed
  doc: random number seed
  type: long?
  inputBinding:
    prefix: --seed
- id: in_log
  doc: if given, output debugging log
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_nodes
  doc: 'Search:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_ext)
hints: []
cwlVersion: v1.1
baseCommand:
- dlcpar_search
