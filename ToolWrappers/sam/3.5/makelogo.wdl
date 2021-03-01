version 1.0

task Makelogo {
  command <<<
    makelogo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}