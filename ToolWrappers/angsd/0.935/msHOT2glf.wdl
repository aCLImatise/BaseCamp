version 1.0

task MsHOT2glf {
  command <<<
    msHOT2glf
  >>>
  runtime {
    docker: "quay.io/biocontainers/angsd:0.935--hd2e4403_0"
  }
  output {
    File out_stdout = stdout()
  }
}