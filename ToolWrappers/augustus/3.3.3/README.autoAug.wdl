version 1.0

task READMEautoAug {
  command <<<
    README_autoAug
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}