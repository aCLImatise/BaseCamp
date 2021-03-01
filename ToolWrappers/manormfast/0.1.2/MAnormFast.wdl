version 1.0

task MAnormFast {
  command <<<
    MAnormFast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}