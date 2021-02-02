version 1.0

task SgaFilter {
  input {
    Boolean? verbose
    File? prefix
    File? outfile
    Int? threads
    Int? sample_rate
    Boolean? no_duplicate_check
    Boolean? substring_only
    Boolean? no_km_er_check
    Boolean? km_er_both_strand
    Boolean? homopolymer_check
    Boolean? low_complexity_check
    Int? km_er_size
    Int? km_er_threshold
  }
  command <<<
    sga filter \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""} \
      ~{if (no_duplicate_check) then "--no-duplicate-check" else ""} \
      ~{if (substring_only) then "--substring-only" else ""} \
      ~{if (no_km_er_check) then "--no-kmer-check" else ""} \
      ~{if (km_er_both_strand) then "--kmer-both-strand" else ""} \
      ~{if (homopolymer_check) then "--homopolymer-check" else ""} \
      ~{if (low_complexity_check) then "--low-complexity-check" else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    outfile: "write the qc-passed reads to FILE (default: READSFILE.filter.pass.fa)"
    threads: "use NUM threads to compute the overlaps (default: 1)"
    sample_rate: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
    no_duplicate_check: "turn off duplicate removal"
    substring_only: "when removing duplicates, only remove substring sequences, not full-length matches"
    no_km_er_check: "turn off the kmer check"
    km_er_both_strand: "mimimum kmer coverage is required for both strand"
    homopolymer_check: "check reads for hompolymer run length sequencing errors"
    low_complexity_check: "filter out low complexity reads"
    km_er_size: "The length of the kmer to use. (default: 27)"
    km_er_threshold: "Require at least N kmer coverage for each kmer in a read. (default: 3)"
  }
  output {
    File out_stdout = stdout()
  }
}