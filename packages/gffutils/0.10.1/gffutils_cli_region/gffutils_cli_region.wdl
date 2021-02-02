version 1.0

task GffutilscliRegion {
  command <<<
    gffutils_cli region
  >>>
  output {
    File out_stdout = stdout()
  }
}