version 1.0

task MmseqsSwapdb {
  input {
    Boolean? split_memory_limit
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs swapdb \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}