version 1.0

task SeqGen {
  input {
    Boolean? _sequence_length
    Boolean? simulated_datasets_tree
    Boolean? number_partitions_trees
    Boolean? branch_length_factor
    Boolean? total_tree_scale
    Boolean? use_sequence_k
    Boolean? model_gtr_jtt
    Boolean? shape_alpha_gamma
    Boolean? number_gamma_rate
    Boolean? proportion_invariable_sites
    Boolean? rates_codon_position
    Boolean? _transitiontransversion_ratio
    Boolean? general_rate_matrix
    Boolean? c_g_t
  }
  command <<<
    seq-gen \
      ~{true="-l" false="" _sequence_length} \
      ~{true="-n" false="" simulated_datasets_tree} \
      ~{true="-p" false="" number_partitions_trees} \
      ~{true="-s" false="" branch_length_factor} \
      ~{true="-d" false="" total_tree_scale} \
      ~{true="-k" false="" use_sequence_k} \
      ~{true="-m" false="" model_gtr_jtt} \
      ~{true="-a" false="" shape_alpha_gamma} \
      ~{true="-g" false="" number_gamma_rate} \
      ~{true="-i" false="" proportion_invariable_sites} \
      ~{true="-c" false="" rates_codon_position} \
      ~{true="-t" false="" _transitiontransversion_ratio} \
      ~{true="-r" false="" general_rate_matrix} \
      ~{true="-f" false="" c_g_t}
  >>>
  parameter_meta {
    _sequence_length: ": # = sequence length [default = 1000]."
    simulated_datasets_tree: ": # = simulated datasets per tree [default = 1]."
    number_partitions_trees: ": # = number of partitions (and trees) per sequence [default = 1]."
    branch_length_factor: ": # = branch length scaling factor [default = 1.0]."
    total_tree_scale: ": # = total tree scale [default = use branch lengths]."
    use_sequence_k: ": # = use sequence k as ancestral (needs alignment) [default = random]."
    model_gtr_jtt: ": MODEL = HKY, F84, GTR, JTT, WAG, PAM, BLOSUM, MTREV, CPREV45, MTART, LG, GENERAL HKY, F84 & GTR are for nucleotides the rest are for amino acids"
    shape_alpha_gamma: ": # = shape (alpha) for gamma rate heterogeneity [default = none]."
    number_gamma_rate: ": # = number of gamma rate categories [default = continuous]."
    proportion_invariable_sites: ": # = proportion of invariable sites [default = 0.0]."
    rates_codon_position: ": #1 #2 #3 = rates for codon position heterogeneity [default = none]."
    _transitiontransversion_ratio: ": # = transition-transversion ratio [default = equal rate]."
    general_rate_matrix: ": #1 #2 #3 #4 #5 #6= general rate matrix [default = all 1.0]."
    c_g_t: ": #A #C #G #T = nucleotide frequencies [default = all equal]."
  }
}