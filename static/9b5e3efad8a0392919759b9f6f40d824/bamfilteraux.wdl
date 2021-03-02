version 1.0

task Bamfilteraux {
  command <<<
    bamfilteraux
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}