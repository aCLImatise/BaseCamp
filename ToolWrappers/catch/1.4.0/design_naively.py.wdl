version 1.0

task DesignNaivelypy {
  input {
    Int? probe_length
    Int? probe_stride
    String? nrf
    String? dsf
    Boolean? add_reverse_complements
    String? limit_target_genomes
    String? limit_target_genomes_randomly_with_replacement
    Boolean? print_analysis
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    design_naively_py \
      ~{if defined(probe_length) then ("--probe-length " +  '"' + probe_length + '"') else ""} \
      ~{if defined(probe_stride) then ("--probe-stride " +  '"' + probe_stride + '"') else ""} \
      ~{if defined(nrf) then ("-nrf " +  '"' + nrf + '"') else ""} \
      ~{if defined(dsf) then ("-dsf " +  '"' + dsf + '"') else ""} \
      ~{if (add_reverse_complements) then "--add-reverse-complements" else ""} \
      ~{if defined(limit_target_genomes) then ("--limit-target-genomes " +  '"' + limit_target_genomes + '"') else ""} \
      ~{if defined(limit_target_genomes_randomly_with_replacement) then ("--limit-target-genomes-randomly-with-replacement " +  '"' + limit_target_genomes_randomly_with_replacement + '"') else ""} \
      ~{if (print_analysis) then "--print-analysis" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/catch:1.4.0--py_0"
  }
  parameter_meta {
    probe_length: "(Optional) The number of bp in each probe"
    probe_stride: "(Optional) Generate candidate probes from the input\\nthat are separated by this number of bp"
    nrf: "NAIVE_REDUNDANT_FILTER, --naive-redundant-filter NAIVE_REDUNDANT_FILTER NAIVE_REDUNDANT_FILTER\\nArgs: <MISMATCHES> <LCF_THRES>. Use the 'naive\\nredundant filter' -- i.e., iterate through a list of\\nprobes and, for each probe p, remove the following\\nprobes that are redundant to p. Deem one probe\\nredundant to another if the longest common substring\\nbetween them, up to MISMATCHES mismatches, is >=\\nLCF_THRES."
    dsf: "DOMINATING_SET_FILTER, --dominating-set-filter DOMINATING_SET_FILTER DOMINATING_SET_FILTER\\nArgs: <MISMATCHES> <LCF_THRES>. Use the 'dominating\\nset filter' -- i.e., filter redundant probes by\\nconstructing a graph connecting redundant probes and\\napproximating the smallest dominating set. Deem one\\nprobe redundant to another if the longest common\\nsubstring between them, up to MISMATCHES mismatches,\\nis >= LCF_THRES."
    add_reverse_complements: "Add to the output the reverse complement of each probe"
    limit_target_genomes: "(Optional) Use only the first N target genomes in the\\ndataset"
    limit_target_genomes_randomly_with_replacement: "(Optional) Randomly select N target genomes in the\\ndataset with replacement"
    print_analysis: "Print analysis of the probe set's coverage"
    debug: "Debug output"
    verbose: "Verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}