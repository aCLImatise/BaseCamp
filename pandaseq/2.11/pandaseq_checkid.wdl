version 1.0

task Pandaseqcheckid {
  command <<<
    pandaseq_checkid
  >>>
  output {
    File out_stdout = stdout()
  }
}