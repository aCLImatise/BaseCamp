version 1.0

task Fgapm {
  command <<<
    fgap_m
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}