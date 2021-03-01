version 1.0

task Bamsplitdiv {
  command <<<
    bamsplitdiv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}