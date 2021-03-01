version 1.0

task Bgbpipe {
  command <<<
    bg_bpipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}