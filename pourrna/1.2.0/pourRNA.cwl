class: CommandLineTool
id: pourRNA.cwl
inputs:
- id: sequence
  doc: The RNA sequence of the molecule (default=`ACUGUAUGCGCGU')
  type: string
  inputBinding:
    prefix: --sequence
- id: start_structure
  doc: the start structure of the exploration defining the first gradient basin; defaults
    to the open chain
  type: string
  inputBinding:
    prefix: --start-structure
- id: start_structure_file
  doc: File with start structures (one per line)
  type: string
  inputBinding:
    prefix: --start-structure-file
- id: final_structure
  doc: the final structure of the exploration defining the last gradient basin
  type: string
  inputBinding:
    prefix: --final-structure
- id: max_threads
  doc: Sets the maximum number of threads for parallelized computation.
  type: long
  inputBinding:
    prefix: --max-threads
- id: skip_diagonal
  doc: Skip the computation of the diagonal of the rate matrix (it can be skipped
    because some post-processing tools like treekin compute it per default).  (default=off)
  type: boolean
  inputBinding:
    prefix: --skip-diagonal
- id: filter_best_k
  doc: reduces outgoing transitions to the best K for each gradient basin
  type: long
  inputBinding:
    prefix: --filter-best-k
- id: dynamic_best_k
  doc: Increases K if the MFE structure is not explored. (default=off)
  type: boolean
  inputBinding:
    prefix: --dynamic-best-k
- id: max_neigh_e
  doc: reduces outgoing transitions to the neighbored minima, for which the energy
    is lower than the energy of the current minimum plus the filter value. (E(neighbored
    minimum) < E(current minimum) + filterValue) for each gradient basin.
  type: string
  inputBinding:
    prefix: --max-neigh-e
- id: max_to_queue
  doc: Sets the maximum number of states to be stored in the priority queue of the
    flooder.
  type: long
  inputBinding:
    prefix: --max-to-queue
- id: max_to_hash
  doc: Sets the maximum number of states to be hashed for a gradient walk.
  type: long
  inputBinding:
    prefix: --max-to-hash
- id: dynamic_max_to_hash
  doc: Sets the dynamicMaxToHash variable for estimating the maximal number of states
    to be hashed in a gradient walk, by considering the maximal available physical
    memory and the number of threads. This reduces the probability of swapping. (default=off)
  type: boolean
  inputBinding:
    prefix: --dynamic-max-to-hash
- id: max_energy
  doc: Sets the maximum energy that a state is allowed to have to be considered by
    the flooder (in kcal/mol). (default=`5')
  type: string
  inputBinding:
    prefix: --max-energy
- id: delta_e
  doc: Set the maximum energy difference that states in a basin can have w.r.t. the
    local minimum (in kcal/mol). (default=`65536')
  type: string
  inputBinding:
    prefix: --delta-e
- id: max_bp_dist_add
  doc: "Increases the maximum base pair distance for direct neighbor minima to be\
    \ explored. Needs a start structure and a final structure in order to work. For\
    \ all discovered minima m holds: bp_dist(m, start-structure) + bp_dist(m, final-structure)\
    \ < d(start-structure, final-structure) + maxBPdist_add. If this parameter is\
    \ given, the explorative flooding will not stop at the final structure! Instead\
    \ it will explore all minima on the direct path and at its borders. This helps\
    \ to evaluate optimal refolding paths in a post-processing step. (default=`65536')"
  type: long
  inputBinding:
    prefix: --max-bp-dist-add
- id: temperature
  doc: Set the temperature for the free energy calculation (in °C). (If "T" is set
    and "B" not, "B" is equals "T"). (default=`37')
  type: string
  inputBinding:
    prefix: --temperature
- id: gas_constant
  doc: "Set the gas constant in [kcal/(K*mol)]. You need this in order to compare\
    \ the rate matrix with the results of other tools. ViennaRNA package: 0.00198717\
    \ kcal/(K*mol) Barriers:          0.00198717 kcal/(K*mol) ELL Library:       0.0019871588\
    \ kcal/(K*mol) (default=`0.00198717')"
  type: string
  inputBinding:
    prefix: --gas-constant
- id: dangling_end
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops. (default=`2')
  type: long
  inputBinding:
    prefix: --dangling-end
- id: boltzmann_temp
  doc: Set the temperature for the Boltzmann weight (in °C). (default=`37')
  type: string
  inputBinding:
    prefix: --boltzmann-temp
- id: energy_model
  doc: Set the energy model. 0=Turner model 2004, 1=Turner model 1999, 2=Andronescu
    model, 2007 (default=`0')
  type: long
  inputBinding:
    prefix: --energy-model
- id: move_set
  doc: "Move set: 0 = insertion and deletion, 1 = shift moves, 2 = no lonely pair\
    \ moves. (default=`0')"
  type: long
  inputBinding:
    prefix: --move-set
- id: transition_prob
  doc: If provided, the transition probability matrix will be written to the given
    file name or 'STDOUT' when to write to standard output
  type: string
  inputBinding:
    prefix: --transition-prob
- id: energy_file
  doc: File to store all energies.
  type: string
  inputBinding:
    prefix: --energy-file
- id: binary_rates_file
  doc: File to store all rates in a treekin readable format.
  type: string
  inputBinding:
    prefix: --binary-rates-file
- id: binary_rates_file_sparse
  doc: 'File to store all rates in a sparse binary format: First value is the number
    of states (uint_32), then <uint_32 from>, <uint_32 number of how many value pairs
    to>, <value pair <uint_32 to, double rate from, to>> etc.'
  type: string
  inputBinding:
    prefix: --binary-rates-file-sparse
- id: saddle_file
  doc: Store all saddles in a CSV file.
  type: string
  inputBinding:
    prefix: --saddle-file
- id: barriers_like_output
  doc: Output the rates file and the structures in a format similar to the tool barriers.
    For the same prefix is used for both files.
  type: string
  inputBinding:
    prefix: --barriers-like-output
- id: partition_functions
  doc: If provided, the partition function matrix will be written to the given file
    name.
  type: string
  inputBinding:
    prefix: --partition-functions
- id: dot_plot
  doc: If provided, the dotPlot will be written to the given file name. The dotPlot
    contains the base pair probabilities for all structures in the (filtered) energy
    landscape.
  type: string
  inputBinding:
    prefix: --dot-plot
- id: dot_plot_per_basin
  doc: Creates a dotplot for each gradient basin in the enrgy landscape. It shows
    the Maximum Expected Accuracy (MEA) structure in the upper right triangle and
    the basin representative in the lower left triangle.
  type: string
  inputBinding:
    prefix: --dot-plot-per-basin
- id: verbose
  doc: Verbose. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pourRNA
