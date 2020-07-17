version 1.0

task BigMafToMaf {
  input {
    String big_maf_dot_bb
    File file_dot_maf
  }
  command <<<
    bigMafToMaf \
      ~{big_maf_dot_bb} \
      ~{file_dot_maf}
  >>>
  parameter_meta {
    big_maf_dot_bb: ""
    file_dot_maf: ""
  }
}