version 1.0

task MasurcaSoappm {
  command <<<
    MasurcaSoap_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}