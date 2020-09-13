version 1.0

task SciexToolKitdll {
  command <<<
    SciexToolKit_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}