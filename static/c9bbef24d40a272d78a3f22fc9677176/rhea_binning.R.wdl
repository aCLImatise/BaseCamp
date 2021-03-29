version 1.0

task RheabinningR {
  command <<<
    rhea_binning_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}