version 1.0

task JassServe {
  input {
    String jass
  }
  command <<<
    jass serve \
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