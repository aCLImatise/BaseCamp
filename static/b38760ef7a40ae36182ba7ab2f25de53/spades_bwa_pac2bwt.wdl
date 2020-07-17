version 1.0

task SpadesBwaPac2bwt {
  input {
    Boolean? d
    String bwa
    String pac_two_bwt
    String in_dot_pac
    String out_dot_bwt
  }
  command <<<
    spades-bwa pac2bwt \
      ~{bwa} \
      ~{pac_two_bwt} \
      ~{in_dot_pac} \
      ~{out_dot_bwt} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    d: ""
    bwa: ""
    pac_two_bwt: ""
    in_dot_pac: ""
    out_dot_bwt: ""
  }
}