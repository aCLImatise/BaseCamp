version 1.0

task Multinomial {
  input {
    Boolean? arg_output_precision
    Boolean? output_coefficients_probabilities
    Boolean? arg_use_format
    Boolean? output_natural_logarithm
    String parameters_dot_tab
    String counts_dot_tab
    String output_dot_tab
  }
  command <<<
    multinomial \
      ~{parameters_dot_tab} \
      ~{counts_dot_tab} \
      ~{output_dot_tab} \
      ~{true="-p" false="" arg_output_precision} \
      ~{true="-c" false="" output_coefficients_probabilities} \
      ~{true="-f" false="" arg_use_format} \
      ~{true="-l" false="" output_natural_logarithm}
  >>>
  parameter_meta {
    arg_output_precision: "[ --precision ] arg (=5) Output precision of real numbers."
    output_coefficients_probabilities: "[ --coefficients ]       Output coefficients instead of probabilities."
    arg_use_format: "[ --outputFormat ] arg   Use alternative output format. Possible values  are: vector, rowMat, and colMat, which all use  ublas style formatting."
    output_natural_logarithm: "[ --logarithm ]          Output natural logarithm of result values."
    parameters_dot_tab: ""
    counts_dot_tab: ""
    output_dot_tab: ""
  }
}