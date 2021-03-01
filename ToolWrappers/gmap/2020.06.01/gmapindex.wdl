version 1.0

task Gmapindex {
  command <<<
    gmapindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}