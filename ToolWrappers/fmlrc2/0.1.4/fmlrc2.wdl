version 1.0

task Fmlrc2 {
  input {
    Boolean? verbose
    Int? begin_index
    Float? branch_factor
    Int? cache_size
    File? end_index
    Int? kmer_sizes_correction
    Int? min_count
    Int? min_dynamic_count
    Int? threads
    String? flags
    String comp_msbwtdotnpy
    String long_reads_dot_fa
  }
  command <<<
    fmlrc2 \
      ~{flags} \
      ~{comp_msbwtdotnpy} \
      ~{long_reads_dot_fa} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(begin_index) then ("--begin_index " +  '"' + begin_index + '"') else ""} \
      ~{if defined(branch_factor) then ("--branch_factor " +  '"' + branch_factor + '"') else ""} \
      ~{if defined(cache_size) then ("--cache_size " +  '"' + cache_size + '"') else ""} \
      ~{if defined(end_index) then ("--end_index " +  '"' + end_index + '"') else ""} \
      ~{if defined(kmer_sizes_correction) then ("--K " +  '"' + kmer_sizes_correction + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_dynamic_count) then ("--min_dynamic_count " +  '"' + min_dynamic_count + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0"
  }
  parameter_meta {
    verbose: "enable verbose output"
    begin_index: "index of read to start with (default: 0)"
    branch_factor: "branching factor for correction, scaled by k (default: 4.0)"
    cache_size: "the length of k-mer to precompute in cache (default: 8)"
    end_index: "index of read to end with (default: end of file)"
    kmer_sizes_correction: "...                k-mer sizes for correction, can be specified multiple times (default: \\\"-k 21\\n59\\\")"
    min_count: "absolute minimum k-mer count to consisder a path (default: 5)"
    min_dynamic_count: "dynamic minimum k-mer count fraction of median to consider a path (default:\\n0.1)"
    threads: "number of correction threads (default: 1)"
    flags: ""
    comp_msbwtdotnpy: ""
    long_reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}