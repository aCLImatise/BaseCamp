version 1.0

task Bamfiltermc {
  command <<<
    bamfiltermc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}