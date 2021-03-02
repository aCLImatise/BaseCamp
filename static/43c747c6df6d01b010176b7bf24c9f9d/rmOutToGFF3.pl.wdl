version 1.0

task RmOutToGFF3pl {
  command <<<
    rmOutToGFF3_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  output {
    File out_stdout = stdout()
  }
}