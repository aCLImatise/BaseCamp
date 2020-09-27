version 1.0

task MasurcaPathspm {
  command <<<
    MasurcaPaths_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}