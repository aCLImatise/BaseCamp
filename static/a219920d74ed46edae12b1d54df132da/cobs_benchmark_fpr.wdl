version 1.0

task CobsBenchmarkfpr {
  input {
    Boolean? dist
    Boolean? num_km_ers
    Boolean? queries
    Boolean? seed
    Boolean? warm_up
    String in_file
  }
  command <<<
    cobs benchmark_fpr \
      ~{in_file} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (num_km_ers) then "--num-kmers" else ""} \
      ~{if (queries) then "--queries" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (warm_up) then "--warmup" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    dist: "calculate false positive distribution"
    num_km_ers: "number of kmers of each query, default: 1000"
    queries: "number of random queries to run, default: 10000"
    seed: "random seed"
    warm_up: "number of random warmup queries to run, default: 100"
    in_file: "path to the input file"
  }
  output {
    File out_stdout = stdout()
  }
}