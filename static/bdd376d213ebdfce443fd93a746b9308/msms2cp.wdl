version 1.0

task Msms2cp.pl {
  input {
    String msms_output_dot_txt
    String output_filename_prefix
  }
  command <<<
    msms2cp.pl \
      ~{msms_output_dot_txt} \
      ~{output_filename_prefix}
  >>>
  parameter_meta {
    msms_output_dot_txt: ""
    output_filename_prefix: ""
  }
}