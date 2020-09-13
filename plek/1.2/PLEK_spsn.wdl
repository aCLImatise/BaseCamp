version 1.0

task PLEKSpsn {
  command <<<
    PLEK_spsn
  >>>
  output {
    File out_stdout = stdout()
  }
}