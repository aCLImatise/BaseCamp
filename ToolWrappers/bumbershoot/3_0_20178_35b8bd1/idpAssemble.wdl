version 1.0

task IdpAssemble {
  command <<<
    idpAssemble
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}