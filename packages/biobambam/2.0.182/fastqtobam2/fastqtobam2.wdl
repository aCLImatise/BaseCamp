version 1.0

task Fastqtobam2 {
  command <<<
    fastqtobam2
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0"
  }
  output {
    File out_stdout = stdout()
  }
}