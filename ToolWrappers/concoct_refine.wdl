version 1.0

task ConcoctRefine {
  input {
    Int? expansion_factor
    String? seed
    Int? threads
    String cluster_file
    String original_data
    String scg_file
  }
  command <<<
    concoct_refine \
      ~{cluster_file} \
      ~{original_data} \
      ~{scg_file} \
      ~{if defined(expansion_factor) then ("--expansion_factor " +  '"' + expansion_factor + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    expansion_factor: "number of clusters to expand by"
    seed: "The seed used for algorithm result reproducibility."
    threads: "number of threads to use defaults to one\\n"
    cluster_file: "string specifying cluster file"
    original_data: "string original but transformed data file"
    scg_file: "string specifying scg frequency file"
  }
  output {
    File out_stdout = stdout()
  }
}