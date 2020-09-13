version 1.0

task MmseqsBesthitperset {
  input {
    Boolean? simple_best_hit
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs besthitperset \
      ~{if (simple_best_hit) then "--simple-best-hit" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    simple_best_hit: "false           Update the e-value by the best p-value"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}