version 1.0

task MmseqsResultsbyset {
  input {
    Boolean? alpha
    Boolean? short_output
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs resultsbyset \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (short_output) then "--short-output" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alpha: "0.001           Set alpha for combining p-values during aggregation"
    short_output: "false           The output database will contain only the spread p-value"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}