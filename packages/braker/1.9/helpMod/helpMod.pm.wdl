version 1.0

task HelpModpm {
  command <<<
    helpMod_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}