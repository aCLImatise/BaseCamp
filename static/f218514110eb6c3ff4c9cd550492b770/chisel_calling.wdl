version 1.0

task ChiselCalling {
  input {
    Directory? run_dir
    Int? sensitivity
    Int? max_ploidy
    Int? upper_k
    String? seed
    Int? jobs
    String input_file_percell
  }
  command <<<
    chisel_calling \
      ~{input_file_percell} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if defined(max_ploidy) then ("--maxploidy " +  '"' + max_ploidy + '"') else ""} \
      ~{if defined(upper_k) then ("--upperk " +  '"' + upper_k + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chisel:0.0.5--py_0"
  }
  parameter_meta {
    run_dir: "Running directory (default: current directory)"
    sensitivity: "Sensitivity of model selection for ploidy (default: 1,\\nincrease this parameter to lower sensitivity to noisy\\ndata, adjust this value (e.g. 2, 4, ..., 10, ...) to\\nbetter deal with high-variance data (e.g. low\\ncoverage, small number of cells, low number of phased\\nSNPs, etc...)"
    max_ploidy: "Maximum total copy number to consider for balanced\\ncluster (default: 4, corresponding to a WGD)"
    upper_k: "Maximum number of bin clusters (default: 100, use 0 to\\nconsider maximum number of clusters)"
    seed: "Random seed for replication (default: None)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)\\n"
    input_file_percell: "Input file with combined RDR and BAF per bin and per\\ncell (default: combo/combo.tsv)"
  }
  output {
    File out_stdout = stdout()
  }
}