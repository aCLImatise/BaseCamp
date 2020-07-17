version 1.0

task HgFakeAgp {
  input {
    String input_dot_fa
    String output_dot_agp
  }
  command <<<
    hgFakeAgp \
      ~{input_dot_fa} \
      ~{output_dot_agp}
  >>>
  parameter_meta {
    input_dot_fa: ""
    output_dot_agp: ""
  }
}