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
      ~{true="--alpha" false="" alpha} \
      ~{true="--short-output" false="" short_output} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    alpha: "0.001           Set alpha for combining p-values during aggregation         "
    short_output: "false           The output database will contain only the spread p-value    "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}