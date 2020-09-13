version 1.0

task SgaGapfill {
  input {
    Boolean? verbose
    String? prefix
    Int? start_km_er
    Int? end_km_er
    String? km_er_threshold
    Int? threads
    Int? sample_rate
    String scaffolds_dot_fa
  }
  command <<<
    sga gapfill \
      ~{scaffolds_dot_fa} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(start_km_er) then ("--start-kmer " +  '"' + start_km_er + '"') else ""} \
      ~{if defined(end_km_er) then ("--end-kmer " +  '"' + end_km_er + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "load the FM-index with prefix NAME"
    start_km_er: "First kmer size used to attempt to resolve each gap (default: 91)"
    end_km_er: "Last kmer size used to attempt to resolve each gap (default: 51)"
    km_er_threshold: "only use kmers seen at least T times"
    threads: "use NUM computation threads"
    sample_rate: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
    scaffolds_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}