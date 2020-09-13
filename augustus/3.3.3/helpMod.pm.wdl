version 1.0

task HelpModpm {
  command <<<
    helpMod_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}