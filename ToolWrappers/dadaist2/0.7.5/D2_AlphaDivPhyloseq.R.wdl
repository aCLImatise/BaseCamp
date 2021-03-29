version 1.0

task D2AlphaDivPhyloseqR {
  command <<<
    D2_AlphaDivPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}