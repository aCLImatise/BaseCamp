version 1.0

task PaladinBwtupdate {
  input {
    String? theTheBwt
  }
  command <<<
    paladin bwtupdate \
      ~{theTheBwt}
  >>>
}