version 1.0

task MmseqsCombinepvalperset {
  input {
    Boolean? alpha
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs combinepvalperset \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    alpha: "0.001           Set alpha for combining p-values during aggregation"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}