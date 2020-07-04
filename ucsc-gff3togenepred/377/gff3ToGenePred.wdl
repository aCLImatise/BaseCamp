version 1.0

task Gff3ToGenePred {
  input {
    String in_gff_three
    String out_gp
  }
  command <<<
    gff3ToGenePred \
      ~{in_gff_three} \
      ~{out_gp}
  >>>
  parameter_meta {
    in_gff_three: ""
    out_gp: ""
  }
}