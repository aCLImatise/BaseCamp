version 1.0

task Comparematricesquick {
  command <<<
    compare_matrices_quick
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}