version 1.0

task Mglobchiral {
  command <<<
    mglobchiral
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}