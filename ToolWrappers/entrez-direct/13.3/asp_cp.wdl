version 1.0

task Aspcp {
  command <<<
    asp_cp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}