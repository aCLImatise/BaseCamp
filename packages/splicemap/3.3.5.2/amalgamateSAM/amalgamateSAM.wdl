version 1.0

task AmalgamateSAM {
  command <<<
    amalgamateSAM
  >>>
  output {
    File out_stdout = stdout()
  }
}