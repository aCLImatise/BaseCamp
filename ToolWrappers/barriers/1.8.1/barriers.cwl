class: CommandLineTool
id: barriers.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: "Be verbose, i.e. print more information.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Be quiet (also inhibit PS tree output).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_graph
  doc: Define type of the graph, i.e. configuration
  type: string?
  inputBinding:
    prefix: --graph
- id: in_moves
  doc: "Select the move-set for generating neighbors of\na configuration (if Graph\
    \ allows several\ndifferent ones)."
  type: string?
  inputBinding:
    prefix: --moves
- id: in_connected
  doc: "Restrict the output to the connected component.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --connected
- id: in_b_size
  doc: "Print the size of of each basin in output.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --bsize
- id: in_s_size
  doc: Print saddle component sizes.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --ssize
- id: in_max
  doc: "Compute only the lowest <num> local minima.\n(default=`100')"
  type: long?
  inputBinding:
    prefix: --max
- id: in_minh
  doc: "Print only minima with energy barrier greater\nthan delta.  (default=`0.000001')"
  type: double?
  inputBinding:
    prefix: --minh
- id: in_saddle
  doc: "Print the saddle point conformations in output.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --saddle
- id: in_rates
  doc: "Compute rates between macro states (basins).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --rates
- id: in_path
  doc: "=<l2>          Backtrack an optimal path between local minimum\nl2 and l1."
  type: long?
  inputBinding:
    prefix: --path
- id: in_map_struc
  doc: Map conformations to minima in the tree.
  type: File?
  inputBinding:
    prefix: --mapstruc
- id: in_rna_no_lp
  doc: for a landscape of canonical RNA structures.
  type: string
  inputBinding:
    position: 0
- id: in_space_dot
  doc: (default=`RNA')
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barriers
