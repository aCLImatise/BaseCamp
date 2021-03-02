version 1.0

task Fgbio {
  command <<<
    fgbio
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}