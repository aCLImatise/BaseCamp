version 1.0

task JassServe {
  input {
    String jass
  }
  command <<<
    jass serve \
      ~{jass}
  >>>
  parameter_meta {
    jass: ""
  }
  output {
    File out_stdout = stdout()
  }
}