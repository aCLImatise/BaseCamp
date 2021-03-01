version 1.0

task PeakachuWindow {
  input {
    Array[String] pairwise_replicates
    Int? window_size
  }
  command <<<
    peakachu window \
      ~{if defined(pairwise_replicates) then ("--pairwise_replicates " +  '"' + pairwise_replicates + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pairwise_replicates: "[FEATURES [FEATURES ...]]"
    window_size: "[SIZE_FACTORS [SIZE_FACTORS ...]], --size_factors [SIZE_FACTORS [SIZE_FACTORS ...]]\\nNormalization factors for libraries in input order\\n(first experiment then control libraries)"
  }
  output {
    File out_stdout = stdout()
  }
}