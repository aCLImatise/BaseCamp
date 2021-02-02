version 1.0

task Stacksgdb {
  command <<<
    stacks_gdb
  >>>
  output {
    File out_stdout = stdout()
  }
}