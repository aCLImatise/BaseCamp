version 1.0

task Stacksgdb {
  command <<<
    stacks_gdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}