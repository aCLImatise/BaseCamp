version 1.0

task Makefilein {
  command <<<
    Makefile_in
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}