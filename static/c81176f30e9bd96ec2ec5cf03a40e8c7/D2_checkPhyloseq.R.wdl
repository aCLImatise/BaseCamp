version 1.0

task D2checkPhyloseqR {
  command <<<
    D2_checkPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}