version 1.0

task MasurcaSoappm {
  command <<<
    MasurcaSoap_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}