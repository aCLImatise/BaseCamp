version 1.0

task INFORNA {
  input {
    Boolean? constraining_sequence_given
    Boolean? random_initializing_sequence
    Boolean? give_assignment_regions
    Boolean? binary_vector_means
    Int? mismatch_number_maximal
    Boolean? use_default_partition
    Boolean? number_repeating_step
    Int? search_strategy_used
    Boolean? kind_counting_step
    Int? maximal_number_step
    String? choice_candidate_neighbors
    Float? probability_accept_neighbors
    String search_dot
  }
  command <<<
    INFO_RNA \
      ~{search_dot} \
      ~{if (constraining_sequence_given) then "-c" else ""} \
      ~{if (random_initializing_sequence) then "-r" else ""} \
      ~{if (give_assignment_regions) then "-f" else ""} \
      ~{if (binary_vector_means) then "-v" else ""} \
      ~{if defined(mismatch_number_maximal) then ("-n " +  '"' + mismatch_number_maximal + '"') else ""} \
      ~{if (use_default_partition) then "-F" else ""} \
      ~{if (number_repeating_step) then "-R" else ""} \
      ~{if defined(search_strategy_used) then ("-S " +  '"' + search_strategy_used + '"') else ""} \
      ~{if (kind_counting_step) then "-m" else ""} \
      ~{if defined(maximal_number_step) then ("-s " +  '"' + maximal_number_step + '"') else ""} \
      ~{if defined(choice_candidate_neighbors) then ("-N " +  '"' + choice_candidate_neighbors + '"') else ""} \
      ~{if defined(probability_accept_neighbors) then ("-p " +  '"' + probability_accept_neighbors + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    constraining_sequence_given: "\\\"constraints\\\"        Constraining sequence given in IUPAC code."
    random_initializing_sequence: "random initializing sequence"
    give_assignment_regions: "[ACGUMRWSYKVHDBN]     Give the assignment (in IUPAC code) where free bases\\nin loop regions (that give no energy fraction) are\\nset to."
    binary_vector_means: "\\\"allowed mismatches\\\"         binary vector,\\n\\\"1\\\" means a mismatch conc. the constraints is allowed,\\n\\\"0\\\" means a mismatch is forbidden"
    mismatch_number_maximal: "mismatch number         Maximal number of allowed mismatches in a given\\ninterval. If nothing further is given, the interval\\nincludes the whole sequence."
    use_default_partition: "[mp]          Use minimum energy (-Fm) (default), partition function\\nfolding (-Fp) or both (-Fmp)."
    number_repeating_step: "[repeats]     Number of repeating the local search step."
    search_strategy_used: "Search strategy used during the local search step:\\n1 - adaptive walk\\n2 - full local search\\n3 - stochastic local search (default)"
    kind_counting_step: "Kind of counting the step during the local search. Here, only\\naccepted mutations are counted, while usually all tested\\nneighbors are counted."
    maximal_number_step: "The maximal number of step during the stochastic local\\nsearch is given as product of the structure length and a\\nmultiplier. The multiplier is set to 10 by default."
    choice_candidate_neighbors: "choice      Kind of order the candidate neighbors during the local"
    probability_accept_neighbors: "Probability to accept worse neighbors during the stochastic\\nlocal search. It is set to 0.1 by default.\\n"
    search_dot: "1 - randomly\\n2 - energy dependent (default)"
  }
  output {
    File out_stdout = stdout()
  }
}