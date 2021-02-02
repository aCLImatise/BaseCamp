version 1.0

task IdpQuery {
  command <<<
    idpQuery
  >>>
  output {
    File out_stdout = stdout()
  }
}