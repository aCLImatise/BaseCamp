version 1.0

task AmalgamateSAM {
  command <<<
    amalgamateSAM
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}