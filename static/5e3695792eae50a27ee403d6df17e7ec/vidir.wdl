version 1.0

task Vidir {
  command <<<
    vidir
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}