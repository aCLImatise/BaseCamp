version 1.0

task Gsdj500 {
  command <<<
    gsdj500
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}