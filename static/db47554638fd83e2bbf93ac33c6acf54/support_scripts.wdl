version 1.0

task SupportScripts {
  command <<<
    support_scripts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}