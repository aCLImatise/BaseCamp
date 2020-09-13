version 1.0

task Comparematricesquick {
  command <<<
    compare_matrices_quick
  >>>
  output {
    File out_stdout = stdout()
  }
}