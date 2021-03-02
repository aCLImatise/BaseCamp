version 1.0

task Refinesh {
  command <<<
    refine_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}