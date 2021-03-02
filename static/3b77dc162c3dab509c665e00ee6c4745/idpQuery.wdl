version 1.0

task IdpQuery {
  command <<<
    idpQuery
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}