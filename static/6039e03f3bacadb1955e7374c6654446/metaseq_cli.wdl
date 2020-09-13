version 1.0

task Metaseqcli {
  command <<<
    metaseq_cli
  >>>
  output {
    File out_stdout = stdout()
  }
}