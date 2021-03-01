version 1.0

task PizzlyGetFragmentLengthpy {
  input {
    String python
    String get_fragment_length_do_tpy
    Int h_five_file
    String? cut_off
  }
  command <<<
    pizzly_get_fragment_length_py \
      ~{python} \
      ~{get_fragment_length_do_tpy} \
      ~{h_five_file} \
      ~{cut_off}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    python: ""
    get_fragment_length_do_tpy: ""
    h_five_file: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}