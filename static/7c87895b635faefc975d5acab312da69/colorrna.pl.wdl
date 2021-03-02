version 1.0

task Colorrnapl {
  command <<<
    colorrna_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}