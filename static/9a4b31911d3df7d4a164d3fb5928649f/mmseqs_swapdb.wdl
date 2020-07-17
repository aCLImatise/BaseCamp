version 1.0

task MmseqsSwapdb {
  input {
    Boolean? split_memory_limit
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs swapdb \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}