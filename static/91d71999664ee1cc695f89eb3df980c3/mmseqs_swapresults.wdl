version 1.0

task MmseqsSwapresults {
  input {
    Boolean? split_memory_limit
    Boolean? list_matches_evalue
    Boolean? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs swapresults \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}