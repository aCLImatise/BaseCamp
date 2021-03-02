version 1.0

task NanopolishMergepy {
  command <<<
    nanopolish_merge_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}