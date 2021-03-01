version 1.0

task PrecipitateSAM {
  command <<<
    precipitateSAM
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}