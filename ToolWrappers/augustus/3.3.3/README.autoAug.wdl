version 1.0

task READMEautoAug {
  command <<<
    README_autoAug
  >>>
  output {
    File out_stdout = stdout()
  }
}