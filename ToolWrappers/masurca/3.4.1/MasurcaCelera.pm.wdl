version 1.0

task MasurcaCelerapm {
  command <<<
    MasurcaCelera_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}