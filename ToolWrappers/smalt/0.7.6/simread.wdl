version 1.0

task Simread {
  command <<<
    simread
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}