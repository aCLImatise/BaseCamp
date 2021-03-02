version 1.0

task READMEtxt {
  command <<<
    README_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}