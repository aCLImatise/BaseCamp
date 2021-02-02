version 1.0

task Bondtypeorig {
  command <<<
    bondtype_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}