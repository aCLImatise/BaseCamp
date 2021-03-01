version 1.0

task Bondtype {
  command <<<
    bondtype
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}