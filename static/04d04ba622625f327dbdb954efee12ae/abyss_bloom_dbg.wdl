version 1.0

task Abyssbloomdbg {
  input {
    Int? bloom_size
    Boolean? chastity
    Boolean? no_chastity
    File? graph
    Int? num_hashes
    File? input_bloom
    Int? threads
    Boolean? trim_masked
    Boolean? no_trim_masked
    Int? km_er
    Int? kc
    File? out
    String? trim_quality
    String? mask_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Int? trim_length
    Boolean? verbose
    Int? single_km_er
    Int? qr_seed
    String? spaced_seed
    File? cov_track
    File? read_log
    File? ref
    File? trace_file
    Int? checkpoint
    Boolean? keep_checkpoint
    File? checkpoint_prefix
  }
  command <<<
    abyss_bloom_dbg \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(num_hashes) then ("--num-hashes " +  '"' + num_hashes + '"') else ""} \
      ~{if defined(input_bloom) then ("--input-bloom " +  '"' + input_bloom + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(kc) then ("--kc " +  '"' + kc + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if defined(mask_quality) then ("--mask-quality " +  '"' + mask_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if defined(trim_length) then ("--trim-length " +  '"' + trim_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(single_km_er) then ("--single-kmer " +  '"' + single_km_er + '"') else ""} \
      ~{if defined(qr_seed) then ("--qr-seed " +  '"' + qr_seed + '"') else ""} \
      ~{if defined(spaced_seed) then ("--spaced-seed " +  '"' + spaced_seed + '"') else ""} \
      ~{if defined(cov_track) then ("--cov-track " +  '"' + cov_track + '"') else ""} \
      ~{if defined(read_log) then ("--read-log " +  '"' + read_log + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if defined(checkpoint) then ("--checkpoint " +  '"' + checkpoint + '"') else ""} \
      ~{if (keep_checkpoint) then "--keep-checkpoint" else ""} \
      ~{if defined(checkpoint_prefix) then ("--checkpoint-prefix " +  '"' + checkpoint_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    bloom_size: "overall memory budget for the assembly in bytes.\\nUnit suffixes 'k' (kilobytes), 'M' (megabytes),\\nor 'G' (gigabytes) may be used. [required]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    graph: "write de Bruijn graph to FILE (GraphViz)"
    num_hashes: "number of Bloom filter hash functions [1]"
    input_bloom: "load Bloom filter from FILE"
    threads: "use N parallel threads [1]"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    km_er: "the size of a k-mer [<=128]"
    kc: "ignore k-mers having a count < N,\\nusing a counting Bloom filter [2]"
    out: "write the contigs to FILE [STDOUT]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    mask_quality: "mask all low quality bases as `N'"
    standard_quality: "zero quality is `!' (33), typically\\nfor FASTQ and SAM files [default]"
    illumina_quality: "zero quality is `@' (64), typically\\nfor qseq and export files"
    trim_length: "max branch length to trim, in k-mers [k]"
    verbose: "display verbose output"
    single_km_er: "use a spaced seed that consists of two k-mers\\nseparated by a gap. K must be chosen such that\\nK <= k/2"
    qr_seed: "use a spaced seed than consists of two mirrored\\nQR seeds separated by a gap.  The following must\\nhold: (a) N must be prime, (b) N >= 11,\\n(c) N <= k/2"
    spaced_seed: "bitmask indicating k-mer positions to be\\nignored during hashing. The pattern must be\\nsymmetric"
    cov_track: "WIG track with 0/1 indicating k-mers with\\ncoverage above the -c threshold. A reference\\nmust also be specified with -R."
    read_log: "write outcome of processing each read to FILE"
    ref: "specify a reference genome. FILE may be\\nFASTA, FASTQ, SAM, or BAM and may be gzipped."
    trace_file: "write debugging info about generation of\\neach read to FILE"
    checkpoint: "create a checkpoint every N reads [disabled=0]"
    keep_checkpoint: "do not delete checkpoint files after assembly\\ncompletes successfully [disabled]"
    checkpoint_prefix: "filename prefix for checkpoint files\\n['bloom-dbg-checkpoint']"
  }
  output {
    File out_stdout = stdout()
  }
}