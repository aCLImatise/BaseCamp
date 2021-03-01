version 1.0

task MasurcaPathspm {
  command <<<
    MasurcaPaths_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}