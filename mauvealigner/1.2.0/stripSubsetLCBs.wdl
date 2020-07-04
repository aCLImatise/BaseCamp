version 1.0

task StripSubsetLCBs {
  input {
    String input_x_mfa
    String input_bbc_ols
    String output_x_mfa
    Int? var_3
    String? lcb
    Int? size
    Int? var_6
    String? genomes
    String? randomly
    String? subsample
    String? to
    String? x
    String? kb
  }
  command <<<
    stripSubsetLCBs \
      ~{input_x_mfa} \
      ~{input_bbc_ols} \
      ~{output_x_mfa} \
      ~{var_3} \
      ~{lcb} \
      ~{size} \
      ~{var_6} \
      ~{genomes} \
      ~{randomly} \
      ~{subsample} \
      ~{to} \
      ~{x} \
      ~{kb}
  >>>
  parameter_meta {
    input_x_mfa: ""
    input_bbc_ols: ""
    output_x_mfa: ""
    var_3: ""
    lcb: ""
    size: ""
    var_6: ""
    genomes: ""
    randomly: ""
    subsample: ""
    to: ""
    x: ""
    kb: ""
  }
}