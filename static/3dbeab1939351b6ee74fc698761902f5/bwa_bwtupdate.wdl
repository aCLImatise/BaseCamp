version 1.0

task BwaBwtupdate {
  input {
    String? theTheBwt
  }
  command <<<
    bwa bwtupdate \
      ~{theTheBwt}
  >>>
}