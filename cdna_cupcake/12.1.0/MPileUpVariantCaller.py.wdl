version 1.0

task MPileUpVariantCallerpy {
  command <<<
    MPileUpVariantCaller_py
  >>>
  output {
    File out_stdout = stdout()
  }
}