version 1.0

task Logcounter {
  input {
    String? threads
    String? km_er
    String? seed
    String? bloom_size
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? verbose
    String? option
  }
  command <<<
    logcounter \
      ~{option} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    threads: "use N parallel threads [1]"
    km_er: "the size of a k-mer"
    seed: "the seed value used"
    bloom_size: "size of bloom filter [500M]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    standard_quality: "zero quality is `!' (33) default for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64) default for qseq and export files"
    verbose: "display verbose output"
    option: ""
  }
}