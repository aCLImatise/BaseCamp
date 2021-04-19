version 1.0

task D2AbundancesPhyloseqR {
  command <<<
    D2_AbundancesPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}