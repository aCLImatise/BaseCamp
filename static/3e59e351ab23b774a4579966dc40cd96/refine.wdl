version 1.0

task Refine {
  command <<<
    refine
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}