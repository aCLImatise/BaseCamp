version 1.0

task INFORNA {
  input {
    Boolean? constraining_sequence_given
    Boolean? random_initializing_sequence
    Boolean? give_assignment_iupac
    Boolean? means_mismatch_forbidden
    Int? mismatch_number_maximal
    Boolean? use_minimum_function
    Boolean? number_repeating_step
    String? search_strategy_used
    Boolean? kind_of_counting
    String? maximal_number_step
    String? choice_kind_neighbors
    String? probability_accept_neighbors
  }
  command <<<
    INFO-RNA \
      ~{true="-c" false="" constraining_sequence_given} \
      ~{true="-r" false="" random_initializing_sequence} \
      ~{true="-f" false="" give_assignment_iupac} \
      ~{true="-v" false="" means_mismatch_forbidden} \
      ~{if defined(mismatch_number_maximal) then ("-n " +  '"' + mismatch_number_maximal + '"') else ""} \
      ~{true="-F" false="" use_minimum_function} \
      ~{true="-R" false="" number_repeating_step} \
      ~{if defined(search_strategy_used) then ("-S " +  '"' + search_strategy_used + '"') else ""} \
      ~{true="-m" false="" kind_of_counting} \
      ~{if defined(maximal_number_step) then ("-s " +  '"' + maximal_number_step + '"') else ""} \
      ~{if defined(choice_kind_neighbors) then ("-N " +  '"' + choice_kind_neighbors + '"') else ""} \
      ~{if defined(probability_accept_neighbors) then ("-p " +  '"' + probability_accept_neighbors + '"') else ""}
  >>>
  parameter_meta {
    constraining_sequence_given: "\"constraints\"        Constraining sequence given in IUPAC code."
    random_initializing_sequence: "random initializing sequence"
    give_assignment_iupac: "[ACGUMRWSYKVHDBN]     Give the assignment (in IUPAC code) where free bases in loop regions (that give no energy fraction) are set to."
    means_mismatch_forbidden: "\"allowed mismatches\"         binary vector, \"1\" means a mismatch conc. the constraints is allowed, \"0\" means a mismatch is forbidden"
    mismatch_number_maximal: "mismatch number         Maximal number of allowed mismatches in a given interval. If nothing further is given, the interval  includes the whole sequence."
    use_minimum_function: "[mp]          Use minimum energy (-Fm) (default), partition function folding (-Fp) or both (-Fmp)."
    number_repeating_step: "[repeats]     Number of repeating the local search step."
    search_strategy_used: "Search strategy used during the local search step:  1 - adaptive walk 2 - full local search 3 - stochastic local search (default)"
    kind_of_counting: "Kind of counting the step during the local search. Here, only accepted mutations are counted, while usually all tested  neighbors are counted."
    maximal_number_step: "The maximal number of step during the stochastic local search is given as product of the structure length and a  multiplier. The multiplier is set to 10 by default."
    choice_kind_neighbors: "choice      Kind of order the candidate neighbors during the local search. 1 - randomly 2 - energy dependent (default)"
    probability_accept_neighbors: "Probability to accept worse neighbors during the stochastic local search. It is set to 0.1 by default."
  }
}