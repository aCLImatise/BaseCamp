version 1.0

task Bamfilternames {
  command <<<
    bamfilternames
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}