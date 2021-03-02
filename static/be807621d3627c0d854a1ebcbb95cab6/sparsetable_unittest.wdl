version 1.0

task SparsetableUnittest {
  command <<<
    sparsetable_unittest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}