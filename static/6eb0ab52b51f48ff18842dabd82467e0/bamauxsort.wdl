version 1.0

task Bamauxsort {
  command <<<
    bamauxsort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}