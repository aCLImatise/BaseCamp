version 1.0

task Pandaseqcheckid {
  command <<<
    pandaseq_checkid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}