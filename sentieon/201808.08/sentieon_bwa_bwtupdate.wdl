version 1.0

task SentieonBwaBwtupdate {
  input {
    String bwa
    String bwt_update
    String the_dot_bwt
  }
  command <<<
    sentieon-bwa bwtupdate \
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