version 1.0

task 0READMEtxt {
  command <<<
    _0_README_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}