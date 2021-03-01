version 1.0

task Fakealigner {
  command <<<
    fakealigner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}