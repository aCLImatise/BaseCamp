version 1.0

task Mosdepth {
  input {
    String? threads
    String? chrom
    String? by
    Boolean? no_per_base
    String? fast_a
    String? flag
    String? include_flag
    Boolean? fast_mode
    String? quantize
    String? mapq
    String? thresholds
    Boolean? use_median
    String? read_groups
    String prefix
    String bam_or_cram
  }
  command <<<
    mosdepth \
      ~{prefix} \
      ~{bam_or_cram} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{true="--no-per-base" false="" no_per_base} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(include_flag) then ("--include-flag " +  '"' + include_flag + '"') else ""} \
      ~{true="--fast-mode" false="" fast_mode} \
      ~{if defined(quantize) then ("--quantize " +  '"' + quantize + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(thresholds) then ("--thresholds " +  '"' + thresholds + '"') else ""} \
      ~{true="--use-median" false="" use_median} \
      ~{if defined(read_groups) then ("--read-groups " +  '"' + read_groups + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of BAM decompression threads [default: 0]"
    chrom: "chromosome to restrict depth calculation."
    by: "optional BED file or (integer) window-sizes. "
    no_per_base: "dont output per-base depth. skipping this output will speed execution substantially. prefer quantized or thresholded values if possible."
    fast_a: "fasta file for use with CRAM files [default: ]."
    flag: "exclude reads with any of the bits in FLAG set [default: 1796]"
    include_flag: "only include reads with any of the bits in FLAG set. default is unset. [default: 0]"
    fast_mode: "dont look at internal cigar operations or correct mate overlaps (recommended for most use-cases)."
    quantize: "write quantized output see docs for description."
    mapq: "mapping quality threshold. reads with a quality less than this value are ignored [default: 0]"
    thresholds: "for each interval in --by, write number of bases covered by at least threshold bases. Specify multiple integer values separated by ','."
    use_median: "output median of each region (in --by) instead of mean."
    read_groups: "only calculate depth for these comma-separated read groups IDs."
    prefix: ""
    bam_or_cram: ""
  }
}