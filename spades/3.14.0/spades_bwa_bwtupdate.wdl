version 1.0

task SpadesBwaBwtupdate {
  input {
    String bwa
    String bwt_update
    String the_dot_bwt
  }
  command <<<
    spades-bwa bwtupdate \
      ~{bwa} \
      ~{bwt_update} \
      ~{the_dot_bwt}
  >>>
  parameter_meta {
    bwa: ""
    bwt_update: ""
    the_dot_bwt: ""
  }
}