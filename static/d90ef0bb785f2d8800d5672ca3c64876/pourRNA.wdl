version 1.0

task PourRNA {
  input {
    String? sequence
    String? start_structure
    String? start_structure_file
    String? final_structure
    Int? max_threads
    Boolean? skip_diagonal
    Int? filter_best_k
    Boolean? dynamic_best_k
    String? max_neigh_e
    Int? max_to_queue
    Int? max_to_hash
    Boolean? dynamic_max_to_hash
    String? max_energy
    String? delta_e
    Int? max_bp_dist_add
    String? temperature
    String? gas_constant
    Int? dangling_end
    String? boltzmann_temp
    Int? energy_model
    Int? move_set
    String? transition_prob
    String? energy_file
    String? binary_rates_file
    String? binary_rates_file_sparse
    String? saddle_file
    String? barriers_like_output
    String? partition_functions
    String? dot_plot
    String? dot_plot_per_basin
    Boolean? verbose
  }
  command <<<
    pourRNA \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(start_structure) then ("--start-structure " +  '"' + start_structure + '"') else ""} \
      ~{if defined(start_structure_file) then ("--start-structure-file " +  '"' + start_structure_file + '"') else ""} \
      ~{if defined(final_structure) then ("--final-structure " +  '"' + final_structure + '"') else ""} \
      ~{if defined(max_threads) then ("--max-threads " +  '"' + max_threads + '"') else ""} \
      ~{true="--skip-diagonal" false="" skip_diagonal} \
      ~{if defined(filter_best_k) then ("--filter-best-k " +  '"' + filter_best_k + '"') else ""} \
      ~{true="--dynamic-best-k" false="" dynamic_best_k} \
      ~{if defined(max_neigh_e) then ("--max-neigh-e " +  '"' + max_neigh_e + '"') else ""} \
      ~{if defined(max_to_queue) then ("--max-to-queue " +  '"' + max_to_queue + '"') else ""} \
      ~{if defined(max_to_hash) then ("--max-to-hash " +  '"' + max_to_hash + '"') else ""} \
      ~{true="--dynamic-max-to-hash" false="" dynamic_max_to_hash} \
      ~{if defined(max_energy) then ("--max-energy " +  '"' + max_energy + '"') else ""} \
      ~{if defined(delta_e) then ("--delta-e " +  '"' + delta_e + '"') else ""} \
      ~{if defined(max_bp_dist_add) then ("--max-bp-dist-add " +  '"' + max_bp_dist_add + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(gas_constant) then ("--gas-constant " +  '"' + gas_constant + '"') else ""} \
      ~{if defined(dangling_end) then ("--dangling-end " +  '"' + dangling_end + '"') else ""} \
      ~{if defined(boltzmann_temp) then ("--boltzmann-temp " +  '"' + boltzmann_temp + '"') else ""} \
      ~{if defined(energy_model) then ("--energy-model " +  '"' + energy_model + '"') else ""} \
      ~{if defined(move_set) then ("--move-set " +  '"' + move_set + '"') else ""} \
      ~{if defined(transition_prob) then ("--transition-prob " +  '"' + transition_prob + '"') else ""} \
      ~{if defined(energy_file) then ("--energy-file " +  '"' + energy_file + '"') else ""} \
      ~{if defined(binary_rates_file) then ("--binary-rates-file " +  '"' + binary_rates_file + '"') else ""} \
      ~{if defined(binary_rates_file_sparse) then ("--binary-rates-file-sparse " +  '"' + binary_rates_file_sparse + '"') else ""} \
      ~{if defined(saddle_file) then ("--saddle-file " +  '"' + saddle_file + '"') else ""} \
      ~{if defined(barriers_like_output) then ("--barriers-like-output " +  '"' + barriers_like_output + '"') else ""} \
      ~{if defined(partition_functions) then ("--partition-functions " +  '"' + partition_functions + '"') else ""} \
      ~{if defined(dot_plot) then ("--dot-plot " +  '"' + dot_plot + '"') else ""} \
      ~{if defined(dot_plot_per_basin) then ("--dot-plot-per-basin " +  '"' + dot_plot_per_basin + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    sequence: "The RNA sequence of the molecule (default=`ACUGUAUGCGCGU')"
    start_structure: "the start structure of the exploration defining the first gradient basin; defaults to the open chain"
    start_structure_file: "File with start structures (one per line)"
    final_structure: "the final structure of the exploration defining the last gradient basin"
    max_threads: "Sets the maximum number of threads for parallelized computation."
    skip_diagonal: "Skip the computation of the diagonal of the rate matrix (it can be skipped because some post-processing tools like treekin compute it per default).  (default=off)"
    filter_best_k: "reduces outgoing transitions to the best K for each gradient basin"
    dynamic_best_k: "Increases K if the MFE structure is not explored. (default=off)"
    max_neigh_e: "reduces outgoing transitions to the neighbored minima, for which the energy is lower than the energy of the current minimum plus the filter value. (E(neighbored minimum) < E(current minimum) + filterValue) for each gradient basin."
    max_to_queue: "Sets the maximum number of states to be stored in the priority queue of the flooder."
    max_to_hash: "Sets the maximum number of states to be hashed for a gradient walk."
    dynamic_max_to_hash: "Sets the dynamicMaxToHash variable for estimating the maximal number of states to be hashed in a gradient walk, by considering the maximal available physical memory and the number of threads. This reduces the probability of swapping. (default=off)"
    max_energy: "Sets the maximum energy that a state is allowed to have to be considered by the flooder (in kcal/mol). (default=`5')"
    delta_e: "Set the maximum energy difference that states in a basin can have w.r.t. the local minimum (in kcal/mol). (default=`65536')"
    max_bp_dist_add: "Increases the maximum base pair distance for direct neighbor minima to be explored. Needs a start structure and a final structure in order to work. For all discovered minima m holds: bp_dist(m, start-structure) + bp_dist(m, final-structure) < d(start-structure, final-structure) + maxBPdist_add. If this parameter is given, the explorative flooding will not stop at the final structure! Instead it will explore all minima on the direct path and at its borders. This helps to evaluate optimal refolding paths in a post-processing step. (default=`65536')"
    temperature: "Set the temperature for the free energy calculation (in °C). (If \"T\" is set and \"B\" not, \"B\" is equals \"T\"). (default=`37')"
    gas_constant: "Set the gas constant in [kcal/(K*mol)]. You need this in order to compare the rate matrix with the results of other tools. ViennaRNA package: 0.00198717 kcal/(K*mol) Barriers:          0.00198717 kcal/(K*mol) ELL Library:       0.0019871588 kcal/(K*mol) (default=`0.00198717')"
    dangling_end: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops. (default=`2')"
    boltzmann_temp: "Set the temperature for the Boltzmann weight (in °C). (default=`37')"
    energy_model: "Set the energy model. 0=Turner model 2004, 1=Turner model 1999, 2=Andronescu model, 2007 (default=`0')"
    move_set: "Move set: 0 = insertion and deletion, 1 = shift moves, 2 = no lonely pair moves. (default=`0')"
    transition_prob: "If provided, the transition probability matrix will be written to the given file name or 'STDOUT' when to write to standard output"
    energy_file: "File to store all energies."
    binary_rates_file: "File to store all rates in a treekin readable format."
    binary_rates_file_sparse: "File to store all rates in a sparse binary format: First value is the number of states (uint_32), then <uint_32 from>, <uint_32 number of how many value pairs to>, <value pair <uint_32 to, double rate from, to>> etc."
    saddle_file: "Store all saddles in a CSV file."
    barriers_like_output: "Output the rates file and the structures in a format similar to the tool barriers. For the same prefix is used for both files."
    partition_functions: "If provided, the partition function matrix will be written to the given file name."
    dot_plot: "If provided, the dotPlot will be written to the given file name. The dotPlot contains the base pair probabilities for all structures in the (filtered) energy landscape."
    dot_plot_per_basin: "Creates a dotplot for each gradient basin in the enrgy landscape. It shows the Maximum Expected Accuracy (MEA) structure in the upper right triangle and the basin representative in the lower left triangle."
    verbose: "Verbose. (default=off)"
  }
}