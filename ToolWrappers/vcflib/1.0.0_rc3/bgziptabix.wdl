version 1.0

task Bgziptabix {
  command <<<
    bgziptabix
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}