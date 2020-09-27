version 1.0

task Bondtype {
  command <<<
    bondtype
  >>>
  output {
    File out_stdout = stdout()
  }
}