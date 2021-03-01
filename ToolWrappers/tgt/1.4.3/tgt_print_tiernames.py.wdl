version 1.0

task Tgtprinttiernamespy {
  command <<<
    tgt_print_tiernames_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}