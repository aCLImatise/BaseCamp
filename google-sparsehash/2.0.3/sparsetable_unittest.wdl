version 1.0

task SparsetableUnittest {
  command <<<
    sparsetable_unittest
  >>>
  output {
    File out_stdout = stdout()
  }
}