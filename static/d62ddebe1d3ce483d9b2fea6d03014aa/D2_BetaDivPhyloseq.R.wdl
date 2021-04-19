version 1.0

task D2BetaDivPhyloseqR {
  command <<<
    D2_BetaDivPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}