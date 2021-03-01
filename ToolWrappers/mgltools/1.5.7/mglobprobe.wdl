version 1.0

task Mglobprobe {
  command <<<
    mglobprobe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}