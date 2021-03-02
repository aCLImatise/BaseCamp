version 1.0

task Hicup2hicpipe {
  command <<<
    hicup2hicpipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}