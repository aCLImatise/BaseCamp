version 1.0

task Circospl {
  command <<<
    Circos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}