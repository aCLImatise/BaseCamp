version 1.0

task D2AbundancesPhyloseqR {
  command <<<
    D2_AbundancesPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}