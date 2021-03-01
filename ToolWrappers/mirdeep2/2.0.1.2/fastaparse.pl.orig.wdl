version 1.0

task Fastaparseplorig {
  command <<<
    fastaparse_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}