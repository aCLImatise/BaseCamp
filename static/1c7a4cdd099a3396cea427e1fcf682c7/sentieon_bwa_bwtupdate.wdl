version 1.0

task SentieonBwaBwtupdate {
  input {
    String? bwaBwa
    String? bwtBwtUpdate
    String? theTheBwt
  }
  command <<<
    sentieon-bwa bwtupdate \
      ~{bwaBwa} \
      ~{bwtBwtUpdate} \
      ~{theTheBwt}
  >>>
}