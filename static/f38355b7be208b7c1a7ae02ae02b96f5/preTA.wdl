version 1.0

task PreTA {
  command <<<
    preTA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}