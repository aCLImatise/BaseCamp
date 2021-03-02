version 1.0

task Bamauxmerge {
  command <<<
    bamauxmerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}