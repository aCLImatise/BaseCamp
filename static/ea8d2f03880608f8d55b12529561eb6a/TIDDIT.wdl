version 1.0

task TIDDIT {
  input {
    Boolean? sv
    Boolean? cov
    Boolean? gc
    String module
  }
  command <<<
    TIDDIT \
      ~{module} \
      ~{if (sv) then "--sv" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if (gc) then "--gc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tiddit:2.12.1--py37h0498b6d_0"
  }
  parameter_meta {
    sv: "collect SV signals"
    cov: "select the cov module to analyse the coverage of the genome using bins of a specified size"
    gc: "select the gc module to compute the gc content across the genome using bins of a specified size(accepts a fasta through stdin)"
    module: ""
  }
  output {
    File out_stdout = stdout()
  }
}