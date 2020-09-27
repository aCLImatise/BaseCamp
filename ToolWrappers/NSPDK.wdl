version 1.0

task NSPDK {
  command <<<
    NSPDK
  >>>
  output {
    File out_stdout = stdout()
  }
}