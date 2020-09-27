version 1.0

task SciexWiffdll {
  command <<<
    Sciex_Wiff_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}