version 1.0

task MethylDackel {
  command <<<
    MethylDackel
  >>>
  output {
    File out_stdout = stdout()
  }
}