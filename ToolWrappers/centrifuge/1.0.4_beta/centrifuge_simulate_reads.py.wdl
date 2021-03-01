version 1.0

task CentrifugeSimulateReadspy {
  input {
    Boolean? rna
    Boolean? single_end
    Int? read_length
    Int? fragment_length
    Int? num_fragment
    String? expr_profile
    Float? error_rate
    Int? max_mismatch
    Int? random_seed
    Boolean? sanity_check
    Boolean? verbose
    String index_fname
    String base_fname
  }
  command <<<
    centrifuge_simulate_reads_py \
      ~{index_fname} \
      ~{base_fname} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(num_fragment) then ("--num-fragment " +  '"' + num_fragment + '"') else ""} \
      ~{if defined(expr_profile) then ("--expr-profile " +  '"' + expr_profile + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (sanity_check) then "--sanity-check" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rna: "RNA-seq reads (default: DNA-seq reads)"
    single_end: "single-end reads (default: paired-end reads)"
    read_length: "read length (default: 100)"
    fragment_length: "fragment length (default: 250)"
    num_fragment: "number of fragments (default: 1000000)"
    expr_profile: "expression profile: flux or constant (default: flux)"
    error_rate: "per-base sequencing error rate (%) (default: 0.0)"
    max_mismatch: "max mismatches due to sequencing errors (default: 3)"
    random_seed: "random seeding value (default: 0)"
    sanity_check: "sanity check"
    verbose: "also print some statistics to stderr"
    index_fname: "Centrifuge index"
    base_fname: "output base filename"
  }
  output {
    File out_stdout = stdout()
  }
}