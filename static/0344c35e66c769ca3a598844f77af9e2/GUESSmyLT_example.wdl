version 1.0

task GUESSmyLTexample {
  command <<<
    GUESSmyLT_example
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}