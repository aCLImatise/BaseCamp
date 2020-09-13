version 1.0

task Precomputedistributions {
  input {
    Boolean? arg_value_distributions
    File distribution_file
  }
  command <<<
    precompute_distributions \
      ~{distribution_file} \
      ~{if (arg_value_distributions) then "-N" else ""}
  >>>
  parameter_meta {
    arg_value_distributions: "[ --max_count ] arg (=500) Value up to which distributions are to be\\ncomputed.\\n"
    distribution_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}