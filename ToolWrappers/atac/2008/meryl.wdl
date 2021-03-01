version 1.0

task Meryl {
  command <<<
    meryl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}