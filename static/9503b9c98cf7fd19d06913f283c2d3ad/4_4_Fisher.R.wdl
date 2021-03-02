version 1.0

task _4FisherR {
  command <<<
    __4_Fisher_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}