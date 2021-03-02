version 1.0

task Gbf2xml {
  command <<<
    gbf2xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}