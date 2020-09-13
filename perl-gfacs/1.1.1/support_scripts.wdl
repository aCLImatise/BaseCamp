version 1.0

task SupportScripts {
  command <<<
    support_scripts
  >>>
  output {
    File out_stdout = stdout()
  }
}