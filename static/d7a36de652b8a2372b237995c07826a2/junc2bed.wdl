version 1.0

task Junc2bed {
  command <<<
    junc2bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}