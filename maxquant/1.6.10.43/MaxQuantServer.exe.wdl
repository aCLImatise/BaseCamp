version 1.0

task MaxQuantServerexe {
  command <<<
    MaxQuantServer_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}