version 1.0

task StripSubsetLCBs {
  input {
    String input_x_mfa
    String input_bbc_ols
    String output_x_mfa
    Int? min
    String? lcb
    Int? size
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
      ~{min} \
      ~{lcb} \
      ~{size} \
      ~{genomes} \
      ~{randomly} \
      ~{subsample} \
      ~{to} \
      ~{x} \
      ~{kb}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_x_mfa: ""
    input_bbc_ols: ""
    output_x_mfa: ""
    min: ""
    lcb: ""
    size: ""
    genomes: ""
    randomly: ""
    subsample: ""
    to: ""
    x: ""
    kb: ""
  }
  output {
    File out_stdout = stdout()
  }
}