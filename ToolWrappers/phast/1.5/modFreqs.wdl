version 1.0

task ModFreqs {
  input {
    String or
  }
  command <<<
    modFreqs \
      ~{or}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    or: "modFreqs tree.mod <G+Cfreq> > new.mod"
  }
  output {
    File out_stdout = stdout()
  }
}