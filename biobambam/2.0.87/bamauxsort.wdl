version 1.0

task Bamauxsort {
  command <<<
    bamauxsort
  >>>
  output {
    File out_stdout = stdout()
  }
}