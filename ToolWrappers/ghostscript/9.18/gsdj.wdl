version 1.0

task Gsdj {
  command <<<
    gsdj
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}