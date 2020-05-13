version 1.0

task SpadesBwaBwtupdate {
  input {
    String? bwaBwa
    String? bwtBwtUpdate
    String? theTheBwt
  }
  command <<<
    spades-bwa bwtupdate \
      ~{bwaBwa} \
      ~{bwtBwtUpdate} \
      ~{theTheBwt}
  >>>
}