version 1.0

task JassPhenotypes {
  input {
    String jass
  }
  command <<<
    jass phenotypes \
      ~{jass}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jass: ""
  }
  output {
    File out_stdout = stdout()
  }
}