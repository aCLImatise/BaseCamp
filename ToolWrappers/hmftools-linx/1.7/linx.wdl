version 1.0

task Linx {
  command <<<
    linx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}