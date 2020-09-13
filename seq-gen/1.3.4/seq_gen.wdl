version 1.0

task Seqgen {
  input {
    Boolean? _sequence_length
    Boolean? simulated_datasets_tree
    Boolean? number_partitions_trees
    Boolean? branch_length_scaling
    Boolean? total_tree_scale
    Boolean? use_sequence_k
    Boolean? model_jtt_gtr
    Boolean? shape_alpha_gamma
    Boolean? number_gamma_rate
    Boolean? proportion_invariable_sites
    Boolean? rates_codon_position
    Boolean? _transitiontransversion_ratio
    Boolean? general_rate_matrix
    Boolean? c_g_t
    Boolean? seed_random_number
    File? output_file_format
    Boolean? write_additional_information
    Boolean? name_text_file
    Boolean? _quiet
  }
  command <<<
    seq_gen \
      ~{if (_sequence_length) then "-l" else ""} \
      ~{if (simulated_datasets_tree) then "-n" else ""} \
      ~{if (number_partitions_trees) then "-p" else ""} \
      ~{if (branch_length_scaling) then "-s" else ""} \
      ~{if (total_tree_scale) then "-d" else ""} \
      ~{if (use_sequence_k) then "-k" else ""} \
      ~{if (model_jtt_gtr) then "-m" else ""} \
      ~{if (shape_alpha_gamma) then "-a" else ""} \
      ~{if (number_gamma_rate) then "-g" else ""} \
      ~{if (proportion_invariable_sites) then "-i" else ""} \
      ~{if (rates_codon_position) then "-c" else ""} \
      ~{if (_transitiontransversion_ratio) then "-t" else ""} \
      ~{if (general_rate_matrix) then "-r" else ""} \
      ~{if (c_g_t) then "-f" else ""} \
      ~{if (seed_random_number) then "-z" else ""} \
      ~{if (output_file_format) then "-o" else ""} \
      ~{if (write_additional_information) then "-w" else ""} \
      ~{if (name_text_file) then "-x" else ""} \
      ~{if (_quiet) then "-q" else ""}
  >>>
  parameter_meta {
    _sequence_length: ": # = sequence length [default = 1000]."
    simulated_datasets_tree: ": # = simulated datasets per tree [default = 1]."
    number_partitions_trees: ": # = number of partitions (and trees) per sequence [default = 1]."
    branch_length_scaling: ": # = branch length scaling factor [default = 1.0]."
    total_tree_scale: ": # = total tree scale [default = use branch lengths]."
    use_sequence_k: ": # = use sequence k as ancestral (needs alignment) [default = random]."
    model_jtt_gtr: ": MODEL = HKY, F84, GTR, JTT, WAG, PAM, BLOSUM, MTREV, CPREV45, MTART, LG, GENERAL\\nHKY, F84 & GTR are for nucleotides the rest are for amino acids"
    shape_alpha_gamma: ": # = shape (alpha) for gamma rate heterogeneity [default = none]."
    number_gamma_rate: ": # = number of gamma rate categories [default = continuous]."
    proportion_invariable_sites: ": # = proportion of invariable sites [default = 0.0]."
    rates_codon_position: ": #1 #2 #3 = rates for codon position heterogeneity [default = none]."
    _transitiontransversion_ratio: ": # = transition-transversion ratio [default = equal rate]."
    general_rate_matrix: ": #1 #2 #3 #4 #5 #6= general rate matrix [default = all 1.0]."
    c_g_t: ": #A #C #G #T = nucleotide frequencies [default = all equal]."
    seed_random_number: ": # = seed for random number generator [default = system generated]."
    output_file_format: ": Output file format [default = PHYLIP]\\np PHYLIP format\\nr relaxed PHYLIP format\\nn NEXUS format\\nf FASTA format"
    write_additional_information: ": Write additional information [default = none]\\na Write ancestral sequences for each node\\nr Write rate for each site"
    name_text_file: ": NAME = a text file to insert after every dataset [default = none]."
    _quiet: ": Quiet"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_format = "${in_output_file_format}"
  }
}