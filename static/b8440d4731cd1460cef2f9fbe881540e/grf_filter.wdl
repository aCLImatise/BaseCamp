version 1.0

task GrfFilter {
  input {
    Int min_tr_len
    Int max_tr_len
    Int min_spacer_len
    Int max_spacer_len
    String input_fast_a
    String var_output
  }
  command <<<
    grf-filter \
      ~{min_tr_len} \
      ~{max_tr_len} \
      ~{min_spacer_len} \
      ~{max_spacer_len} \
      ~{input_fast_a} \
      ~{var_output}
  >>>
  parameter_meta {
    min_tr_len: ""
    max_tr_len: ""
    min_spacer_len: ""
    max_spacer_len: ""
    input_fast_a: ""
    var_output: ""
  }
}