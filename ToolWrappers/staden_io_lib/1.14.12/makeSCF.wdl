version 1.0

task MakeSCF {
  command <<<
    makeSCF
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}