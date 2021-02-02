version 1.0

task PaladinBwtupdate {
  input {
    String the_dot_bwt
  }
  command <<<
    paladin bwtupdate \
      ~{the_dot_bwt}
  >>>
  parameter_meta {
    the_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}