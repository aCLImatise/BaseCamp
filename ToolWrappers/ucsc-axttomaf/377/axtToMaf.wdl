version 1.0

task AxtToMaf {
  command <<<
    axtToMaf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}