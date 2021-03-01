version 1.0

task Bamsplit {
  command <<<
    bamsplit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}