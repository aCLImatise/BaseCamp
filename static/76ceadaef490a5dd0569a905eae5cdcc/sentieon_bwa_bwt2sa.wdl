version 1.0

task SentieonBwaBwt2sa {
  input {
    String? i
    String bwa
    String bwt_two_sa
    String in_dot_bwt
    String out_dots_a
  }
  command <<<
    sentieon-bwa bwt2sa \
      ~{bwa} \
      ~{bwt_two_sa} \
      ~{in_dot_bwt} \
      ~{out_dots_a} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    bwa: ""
    bwt_two_sa: ""
    in_dot_bwt: ""
    out_dots_a: ""
  }
}