version 1.0

task CpgcdifenrichhistR {
  command <<<
    cpgcdifenrichhist_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmult:0.0.0.2--r40h8b68381_0"
  }
  output {
    File out_stdout = stdout()
  }
}