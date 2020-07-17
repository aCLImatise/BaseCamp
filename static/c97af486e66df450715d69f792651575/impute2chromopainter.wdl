version 1.0

task Impute2chromopainter.pl {
  input {
    String impute_output_file_dot_haps
    String output_filename_prefix
  }
  command <<<
    impute2chromopainter.pl \
      ~{impute_output_file_dot_haps} \
      ~{output_filename_prefix}
  >>>
  parameter_meta {
    impute_output_file_dot_haps: ""
    output_filename_prefix: ""
  }
}