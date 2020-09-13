version 1.0

task NanopolishMergepy {
  command <<<
    nanopolish_merge_py
  >>>
  output {
    File out_stdout = stdout()
  }
}