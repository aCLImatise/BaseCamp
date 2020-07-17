version 1.0

task PrecomputeDistributions {
  input {
    Boolean? arg_value_distributions
    String distribution_file
  }
  command <<<
    precompute-distributions \
      ~{distribution_file} \
      ~{true="-N" false="" arg_value_distributions}
  >>>
  parameter_meta {
    arg_value_distributions: "[ --max_count ] arg (=500) Value up to which distributions are to be  computed."
    distribution_file: ""
  }
}