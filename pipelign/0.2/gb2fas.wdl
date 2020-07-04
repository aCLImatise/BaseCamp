version 1.0

task Gb2fas {
  input {
    String input_dot_gb
    String output_dot_fas
  }
  command <<<
    gb2fas \
      ~{input_dot_gb} \
      ~{output_dot_fas}
  >>>
  parameter_meta {
    input_dot_gb: ""
    output_dot_fas: ""
  }
}