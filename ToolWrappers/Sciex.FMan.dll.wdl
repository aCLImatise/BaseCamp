version 1.0

task SciexFMandll {
  command <<<
    Sciex_FMan_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}