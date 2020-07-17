version 1.0

task PizzlyGetFragmentLength.py {
  input {
    String python
    String get_fragment_length_do_tpy
    String h_five_file
    String? cut_off
  }
  command <<<
    pizzly_get_fragment_length.py \
      ~{python} \
      ~{get_fragment_length_do_tpy} \
      ~{h_five_file} \
      ~{cut_off}
  >>>
  parameter_meta {
    python: ""
    get_fragment_length_do_tpy: ""
    h_five_file: ""
    cut_off: ""
  }
}