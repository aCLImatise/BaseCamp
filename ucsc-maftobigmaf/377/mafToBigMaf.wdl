version 1.0

task MafToBigMaf {
  input {
    String referenced_b
    String input_dot_maf
    String out_dot_bed
  }
  command <<<
    mafToBigMaf \
      ~{referenced_b} \
      ~{input_dot_maf} \
      ~{out_dot_bed}
  >>>
  parameter_meta {
    referenced_b: ""
    input_dot_maf: ""
    out_dot_bed: ""
  }
}