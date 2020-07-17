version 1.0

task Aa2nonred.pl {
  input {
    String input_dot_fa
    String output_dot_fa
  }
  command <<<
    aa2nonred.pl \
      ~{input_dot_fa} \
      ~{output_dot_fa}
  >>>
  parameter_meta {
    input_dot_fa: ""
    output_dot_fa: ""
  }
}