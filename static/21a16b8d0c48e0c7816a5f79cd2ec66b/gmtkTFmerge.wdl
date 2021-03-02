version 1.0

task GmtkTFmerge {
  command <<<
    gmtkTFmerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}