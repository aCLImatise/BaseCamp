version 1.0

task Fastaparseplorig {
  command <<<
    fastaparse_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}