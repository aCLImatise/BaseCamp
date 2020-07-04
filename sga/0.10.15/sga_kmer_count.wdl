version 1.0

task SgaKmerCount {
  input {
    String? km_er_size
    String? sample_rate
    String? cache_length
    String? option
    String src_dot
  }
  command <<<
    sga kmer-count \
      ~{option} \
      ~{src_dot} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""} \
      ~{if defined(cache_length) then ("--cache-length " +  '"' + cache_length + '"') else ""}
  >>>
  parameter_meta {
    km_er_size: "The length of the kmer to use. (default: 27)"
    sample_rate: "use occurrence array sample rate of N in the FM-index. Higher values use significantly less memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
    cache_length: "Cache Length for bwt lookups (default: 10)"
    option: ""
    src_dot: ""
  }
}