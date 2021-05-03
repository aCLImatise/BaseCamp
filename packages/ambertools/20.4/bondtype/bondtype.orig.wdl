version 1.0

task Bondtypeorig {
  command <<<
    bondtype_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}