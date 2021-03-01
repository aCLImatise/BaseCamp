version 1.0

task PourRNA {
  input {
    String? sequence
    String? start_structure
    File? start_structure_file
    String? final_structure
    Int? max_threads
    Boolean? skip_diagonal
    Int? filter_best_k
    Boolean? dynamic_best_k
    Int? max_neigh_e
    Int? max_to_queue
    Int? max_to_hash
    Boolean? dynamic_max_to_hash
    Int? max_energy
    Int? delta_e
    Int? max_bp_dist_add
    Int? temperature
    Float? gas_constant
    Int? dangling_end
    Int? boltzmann_temp
    Int? energy_model
    Int? move_set
    File? transition_prob
    File? energy_file
    File? binary_rates_file
    File? binary_rates_file_sparse
    File? saddle_file
    File? barriers_like_output
    File? partition_functions
    File? dot_plot
    String? dot_plot_per_basin
    Boolean? verbose
    String explored_dot
  }
  command <<<
    pourRNA \
      ~{explored_dot} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(start_structure) then ("--start-structure " +  '"' + start_structure + '"') else ""} \
      ~{if defined(start_structure_file) then ("--start-structure-file " +  '"' + start_structure_file + '"') else ""} \
      ~{if defined(final_structure) then ("--final-structure " +  '"' + final_structure + '"') else ""} \
      ~{if defined(max_threads) then ("--max-threads " +  '"' + max_threads + '"') else ""} \
      ~{if (skip_diagonal) then "--skip-diagonal" else ""} \
      ~{if defined(filter_best_k) then ("--filter-best-k " +  '"' + filter_best_k + '"') else ""} \
      ~{if (dynamic_best_k) then "--dynamic-best-k" else ""} \
      ~{if defined(max_neigh_e) then ("--max-neigh-e " +  '"' + max_neigh_e + '"') else ""} \
      ~{if defined(max_to_queue) then ("--max-to-queue " +  '"' + max_to_queue + '"') else ""} \
      ~{if defined(max_to_hash) then ("--max-to-hash " +  '"' + max_to_hash + '"') else ""} \
      ~{if (dynamic_max_to_hash) then "--dynamic-max-to-hash" else ""} \
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
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence: "The RNA sequence of the molecule\\n(default=`ACUGUAUGCGCGU')"
    start_structure: "the start structure of the exploration defining\\nthe first gradient basin; defaults to the\\nopen chain"
    start_structure_file: "File with start structures (one per line)"
    final_structure: "the final structure of the exploration defining\\nthe last gradient basin"
    max_threads: "Sets the maximum number of threads for\\nparallelized computation."
    skip_diagonal: "Skip the computation of the diagonal of the\\nrate matrix (it can be skipped because some\\npost-processing tools like treekin compute it\\nper default).  (default=off)"
    filter_best_k: "reduces outgoing transitions to the best K for\\neach gradient basin"
    dynamic_best_k: "Increases K if the MFE structure is not"
    max_neigh_e: "reduces outgoing transitions to the neighbored\\nminima, for which the energy is lower than\\nthe energy of the current minimum plus the\\nfilter value. (E(neighbored minimum) <\\nE(current minimum) + filterValue) for each\\ngradient basin."
    max_to_queue: "Sets the maximum number of states to be stored\\nin the priority queue of the flooder."
    max_to_hash: "Sets the maximum number of states to be hashed\\nfor a gradient walk."
    dynamic_max_to_hash: "Sets the dynamicMaxToHash variable for\\nestimating the maximal number of states to be\\nhashed in a gradient walk, by considering the\\nmaximal available physical memory and the\\nnumber of threads. This reduces the\\nprobability of swapping.\\n(default=off)"
    max_energy: "Sets the maximum energy that a state is allowed\\nto have to be considered by the flooder (in\\nkcal/mol).\\n(default=`5')"
    delta_e: "Set the maximum energy difference that states\\nin a basin can have w.r.t. the local minimum\\n(in kcal/mol).\\n(default=`65536')"
    max_bp_dist_add: "Increases the maximum base pair distance for\\ndirect neighbor minima to be explored. Needs\\na start structure and a final structure in\\norder to work. For all discovered minima m\\nholds: bp_dist(m, start-structure) +\\nbp_dist(m, final-structure) <\\nd(start-structure, final-structure) +\\nmaxBPdist_add.\\nIf this parameter is given, the explorative\\nflooding will not stop at the final\\nstructure! Instead\\nit will explore all minima on the direct path\\nand at its borders. This helps to evaluate\\noptimal refolding paths\\nin a post-processing step.\\n(default=`65536')"
    temperature: "Set the temperature for the free energy\\ncalculation (in °C). (If \\\"T\\\" is set and\\n\\\"B\\\" not, \\\"B\\\" is equals \\\"T\\\").\\n(default=`37')"
    gas_constant: "Set the gas constant in [kcal/(K*mol)]. You\\nneed this in order to compare the rate matrix\\nwith the results of other tools.\\nViennaRNA package: 0.00198717 kcal/(K*mol)\\nBarriers:          0.00198717 kcal/(K*mol)\\nELL Library:       0.0019871588 kcal/(K*mol)\\n(default=`0.00198717')"
    dangling_end: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops.\\n(default=`2')"
    boltzmann_temp: "Set the temperature for the Boltzmann weight\\n(in °C).\\n(default=`37')"
    energy_model: "Set the energy model. 0=Turner model 2004,\\n1=Turner model 1999, 2=Andronescu model, 2007\\n(default=`0')"
    move_set: "Move set: 0 = insertion and deletion, 1 = shift\\nmoves, 2 = no lonely pair moves.\\n(default=`0')"
    transition_prob: "If provided, the transition probability matrix\\nwill be written to the given file name or\\n'STDOUT' when to write to standard output"
    energy_file: "File to store all energies."
    binary_rates_file: "File to store all rates in a treekin readable\\nformat."
    binary_rates_file_sparse: "File to store all rates in a sparse binary\\nformat: First value is the number of states\\n(uint_32), then <uint_32 from>, <uint_32\\nnumber of how many value pairs to>, <value\\npair <uint_32 to, double rate from, to>> etc."
    saddle_file: "Store all saddles in a CSV file."
    barriers_like_output: "Output the rates file and the structures in a\\nformat similar to the tool barriers. For the\\nsame prefix is used for both files."
    partition_functions: "If provided, the partition function matrix will\\nbe written to the given file name."
    dot_plot: "If provided, the dotPlot will be written to the\\ngiven file name. The dotPlot contains the\\nbase pair probabilities for all structures in\\nthe (filtered) energy landscape."
    dot_plot_per_basin: "Creates a dotplot for each gradient basin in\\nthe enrgy landscape. It shows the Maximum\\nExpected Accuracy (MEA) structure in the\\nupper right triangle and the basin\\nrepresentative in the lower left triangle."
    verbose: "Verbose.\\n(default=off)\\n"
    explored_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_transition_prob = "${in_transition_prob}"
    File out_barriers_like_output = "${in_barriers_like_output}"
  }
}