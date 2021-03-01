version 1.0

task BuildBithash {
  command <<<
    build_bithash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}