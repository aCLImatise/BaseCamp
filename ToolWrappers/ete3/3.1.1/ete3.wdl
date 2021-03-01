version 1.0

task Ete3 {
  command <<<
    ete3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}