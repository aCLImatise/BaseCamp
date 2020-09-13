version 1.0

task PrecipitateSAM {
  command <<<
    precipitateSAM
  >>>
  output {
    File out_stdout = stdout()
  }
}