version 1.0

task Metaseqcli {
  command <<<
    metaseq_cli
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}