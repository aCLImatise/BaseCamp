version 1.0

task Chewie {
  command <<<
    chewie
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}