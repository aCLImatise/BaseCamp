class: CommandLineTool
id: pourRNA.cwl
inputs:
- id: in_sequence
  doc: "The RNA sequence of the molecule\n(default=`ACUGUAUGCGCGU')"
  type: string?
  inputBinding:
    prefix: --sequence
- id: in_start_structure
  doc: "the start structure of the exploration defining\nthe first gradient basin;\
    \ defaults to the\nopen chain"
  type: string?
  inputBinding:
    prefix: --start-structure
- id: in_start_structure_file
  doc: File with start structures (one per line)
  type: File?
  inputBinding:
    prefix: --start-structure-file
- id: in_final_structure
  doc: "the final structure of the exploration defining\nthe last gradient basin"
  type: string?
  inputBinding:
    prefix: --final-structure
- id: in_max_threads
  doc: "Sets the maximum number of threads for\nparallelized computation."
  type: long?
  inputBinding:
    prefix: --max-threads
- id: in_skip_diagonal
  doc: "Skip the computation of the diagonal of the\nrate matrix (it can be skipped\
    \ because some\npost-processing tools like treekin compute it\nper default). \
    \ (default=off)"
  type: boolean?
  inputBinding:
    prefix: --skip-diagonal
- id: in_filter_best_k
  doc: "reduces outgoing transitions to the best K for\neach gradient basin"
  type: long?
  inputBinding:
    prefix: --filter-best-k
- id: in_dynamic_best_k
  doc: Increases K if the MFE structure is not
  type: boolean?
  inputBinding:
    prefix: --dynamic-best-k
- id: in_max_neigh_e
  doc: "reduces outgoing transitions to the neighbored\nminima, for which the energy\
    \ is lower than\nthe energy of the current minimum plus the\nfilter value. (E(neighbored\
    \ minimum) <\nE(current minimum) + filterValue) for each\ngradient basin."
  type: long?
  inputBinding:
    prefix: --max-neigh-e
- id: in_max_to_queue
  doc: "Sets the maximum number of states to be stored\nin the priority queue of the\
    \ flooder."
  type: long?
  inputBinding:
    prefix: --max-to-queue
- id: in_max_to_hash
  doc: "Sets the maximum number of states to be hashed\nfor a gradient walk."
  type: long?
  inputBinding:
    prefix: --max-to-hash
- id: in_dynamic_max_to_hash
  doc: "Sets the dynamicMaxToHash variable for\nestimating the maximal number of states\
    \ to be\nhashed in a gradient walk, by considering the\nmaximal available physical\
    \ memory and the\nnumber of threads. This reduces the\nprobability of swapping.\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --dynamic-max-to-hash
- id: in_max_energy
  doc: "Sets the maximum energy that a state is allowed\nto have to be considered\
    \ by the flooder (in\nkcal/mol).\n(default=`5')"
  type: long?
  inputBinding:
    prefix: --max-energy
- id: in_delta_e
  doc: "Set the maximum energy difference that states\nin a basin can have w.r.t.\
    \ the local minimum\n(in kcal/mol).\n(default=`65536')"
  type: long?
  inputBinding:
    prefix: --delta-e
- id: in_max_bp_dist_add
  doc: "Increases the maximum base pair distance for\ndirect neighbor minima to be\
    \ explored. Needs\na start structure and a final structure in\norder to work.\
    \ For all discovered minima m\nholds: bp_dist(m, start-structure) +\nbp_dist(m,\
    \ final-structure) <\nd(start-structure, final-structure) +\nmaxBPdist_add.\n\
    If this parameter is given, the explorative\nflooding will not stop at the final\n\
    structure! Instead\nit will explore all minima on the direct path\nand at its\
    \ borders. This helps to evaluate\noptimal refolding paths\nin a post-processing\
    \ step.\n(default=`65536')"
  type: long?
  inputBinding:
    prefix: --max-bp-dist-add
- id: in_temperature
  doc: "Set the temperature for the free energy\ncalculation (in °C). (If \"T\" is\
    \ set and\n\"B\" not, \"B\" is equals \"T\").\n(default=`37')"
  type: long?
  inputBinding:
    prefix: --temperature
- id: in_gas_constant
  doc: "Set the gas constant in [kcal/(K*mol)]. You\nneed this in order to compare\
    \ the rate matrix\nwith the results of other tools.\nViennaRNA package: 0.00198717\
    \ kcal/(K*mol)\nBarriers:          0.00198717 kcal/(K*mol)\nELL Library:     \
    \  0.0019871588 kcal/(K*mol)\n(default=`0.00198717')"
  type: double?
  inputBinding:
    prefix: --gas-constant
- id: in_dangling_end
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops.\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangling-end
- id: in_boltzmann_temp
  doc: "Set the temperature for the Boltzmann weight\n(in °C).\n(default=`37')"
  type: long?
  inputBinding:
    prefix: --boltzmann-temp
- id: in_energy_model
  doc: "Set the energy model. 0=Turner model 2004,\n1=Turner model 1999, 2=Andronescu\
    \ model, 2007\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --energy-model
- id: in_move_set
  doc: "Move set: 0 = insertion and deletion, 1 = shift\nmoves, 2 = no lonely pair\
    \ moves.\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --move-set
- id: in_transition_prob
  doc: "If provided, the transition probability matrix\nwill be written to the given\
    \ file name or\n'STDOUT' when to write to standard output"
  type: File?
  inputBinding:
    prefix: --transition-prob
- id: in_energy_file
  doc: File to store all energies.
  type: File?
  inputBinding:
    prefix: --energy-file
- id: in_binary_rates_file
  doc: "File to store all rates in a treekin readable\nformat."
  type: File?
  inputBinding:
    prefix: --binary-rates-file
- id: in_binary_rates_file_sparse
  doc: "File to store all rates in a sparse binary\nformat: First value is the number\
    \ of states\n(uint_32), then <uint_32 from>, <uint_32\nnumber of how many value\
    \ pairs to>, <value\npair <uint_32 to, double rate from, to>> etc."
  type: File?
  inputBinding:
    prefix: --binary-rates-file-sparse
- id: in_saddle_file
  doc: Store all saddles in a CSV file.
  type: File?
  inputBinding:
    prefix: --saddle-file
- id: in_barriers_like_output
  doc: "Output the rates file and the structures in a\nformat similar to the tool\
    \ barriers. For the\nsame prefix is used for both files."
  type: File?
  inputBinding:
    prefix: --barriers-like-output
- id: in_partition_functions
  doc: "If provided, the partition function matrix will\nbe written to the given file\
    \ name."
  type: File?
  inputBinding:
    prefix: --partition-functions
- id: in_dot_plot
  doc: "If provided, the dotPlot will be written to the\ngiven file name. The dotPlot\
    \ contains the\nbase pair probabilities for all structures in\nthe (filtered)\
    \ energy landscape."
  type: File?
  inputBinding:
    prefix: --dot-plot
- id: in_dot_plot_per_basin
  doc: "Creates a dotplot for each gradient basin in\nthe enrgy landscape. It shows\
    \ the Maximum\nExpected Accuracy (MEA) structure in the\nupper right triangle\
    \ and the basin\nrepresentative in the lower left triangle."
  type: string?
  inputBinding:
    prefix: --dot-plot-per-basin
- id: in_verbose
  doc: "Verbose.\n(default=off)\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_explored_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_transition_prob
  doc: "If provided, the transition probability matrix\nwill be written to the given\
    \ file name or\n'STDOUT' when to write to standard output"
  type: File?
  outputBinding:
    glob: $(inputs.in_transition_prob)
- id: out_barriers_like_output
  doc: "Output the rates file and the structures in a\nformat similar to the tool\
    \ barriers. For the\nsame prefix is used for both files."
  type: File?
  outputBinding:
    glob: $(inputs.in_barriers_like_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pourRNA
