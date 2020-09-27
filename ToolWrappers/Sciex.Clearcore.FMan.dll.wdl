version 1.0

task SciexClearcoreFMandll {
  command <<<
    Sciex_Clearcore_FMan_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}