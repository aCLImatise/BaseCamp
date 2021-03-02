version 1.0

task Sparc {
  command <<<
    Sparc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}