version 1.0

task Multinomial {
  input {
    Boolean? arg_output_precision
    Boolean? output_coefficients_instead
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
      ~{if (arg_output_precision) then "-p" else ""} \
      ~{if (output_coefficients_instead) then "-c" else ""} \
      ~{if (arg_use_format) then "-f" else ""} \
      ~{if (output_natural_logarithm) then "-l" else ""}
  >>>
  parameter_meta {
    arg_output_precision: "[ --precision ] arg (=5) Output precision of real numbers."
    output_coefficients_instead: "[ --coefficients ]       Output coefficients instead of probabilities."
    arg_use_format: "[ --outputFormat ] arg   Use alternative output format. Possible values\\nare: vector, rowMat, and colMat, which all use\\nublas style formatting."
    output_natural_logarithm: "[ --logarithm ]          Output natural logarithm of result values."
    parameters_dot_tab: ""
    counts_dot_tab: ""
    output_dot_tab: ""
  }
  output {
    File out_stdout = stdout()
  }
}