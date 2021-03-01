version 1.0

task BwaBwtupdate {
  input {
    String the_dot_bwt
  }
  command <<<
    bwa bwtupdate \
      ~{the_dot_bwt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    the_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}