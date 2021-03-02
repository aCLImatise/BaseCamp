version 1.0

task Abyssbloom {
  input {
    Int? km_er
    Boolean? verbose
    Int? bloom_size
    Int? buffer_size
    Int? threads
    Int? hash_seed
    String? levels
    Boolean? in_it_level
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    Int? num_locks
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    String? window
    Boolean? method
    Boolean? inverse
    Boolean? bed
    Boolean? fast_a
    Boolean? raw
  }
  command <<<
    abyss_bloom \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(hash_seed) then ("--hash-seed " +  '"' + hash_seed + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if (in_it_level) then "--init-level" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(num_locks) then ("--num-locks " +  '"' + num_locks + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (inverse) then "--inverse" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (raw) then "--raw" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er: "the size of a k-mer [required]"
    verbose: "display verbose output"
    bloom_size: "size of bloom filter [500M]"
    buffer_size: "size of I/O buffer for each thread, in bytes [100000]"
    threads: "use N parallel threads [1]"
    hash_seed: "seed for hash function [0]"
    levels: "build a cascading bloom filter with N levels\\nand output the last level"
    in_it_level: "='N=FILE'  initialize level N of cascading bloom filter\\nfrom FILE"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    num_locks: "number of write locks on bloom filter [1000]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    window: "/N           build a bloom filter for subwindow M of N"
    method: "=`String'      choose distance calculation method\\n[`jaccard'(default), `forbes', `czekanowski']"
    inverse: "get k-mers that are *NOT* in the bloom filter"
    bed: "output k-mers in BED format"
    fast_a: "output k-mers in FASTA format [default]"
    raw: "output k-mers in raw format (one per line)"
  }
  output {
    File out_stdout = stdout()
  }
}