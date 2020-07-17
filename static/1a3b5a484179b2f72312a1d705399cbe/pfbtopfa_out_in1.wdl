version 1.0

task PfbtopfaOutIn1 {
  input {
    String pfb_top_fa
    String input_dot_pfb
    String? output_do_tpfa
  }
  command <<<
    pfbtopfa out in1 \
      ~{pfb_top_fa} \
      ~{input_dot_pfb} \
      ~{output_do_tpfa}
  >>>
  parameter_meta {
    pfb_top_fa: ""
    input_dot_pfb: ""
    output_do_tpfa: ""
  }
}