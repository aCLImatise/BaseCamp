version 1.0

task D2AlphaDivPhyloseqR {
  command <<<
    D2_AlphaDivPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}