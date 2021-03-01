version 1.0

task Contrast {
  command <<<
    contrast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}