version 1.0

task IdpQonvert {
  command <<<
    idpQonvert
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}