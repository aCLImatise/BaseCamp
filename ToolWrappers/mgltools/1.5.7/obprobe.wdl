version 1.0

task Obprobe {
  command <<<
    obprobe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}