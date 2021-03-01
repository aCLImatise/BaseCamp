version 1.0

task Jemallocsh {
  command <<<
    jemalloc_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}