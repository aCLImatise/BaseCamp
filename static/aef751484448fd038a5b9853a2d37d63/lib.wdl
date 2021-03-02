version 1.0

task Lib {
  command <<<
    lib
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}