version 1.0

task Logcounter {
  input {
    Int? threads
    Int? km_er
    String? seed
    Int? bloom_size
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? verbose
  }
  command <<<
    logcounter \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    threads: "use N parallel threads [1]"
    km_er: "the size of a k-mer"
    seed: "the seed value used"
    bloom_size: "size of bloom filter [500M]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}