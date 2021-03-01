version 1.0

task Ctgovl {
  command <<<
    ctgovl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}