version 1.0

task SambambaMerge {
  input {
    String? n_threads
    String? compression_level
    Boolean? header
    Boolean? show_progress
    String? filter
    String samba_mba_merge
    String output_dot_bam
    String input_one_dot_bam
    String input_two_dot_bam
  }
  command <<<
    sambamba merge \
      ~{samba_mba_merge} \
      ~{output_dot_bam} \
      ~{input_one_dot_bam} \
      ~{input_two_dot_bam} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--show-progress" false="" show_progress} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    n_threads: "number of threads to use for compression/decompression"
    compression_level: "level of compression for merged BAM file, number from 0 to 9"
    header: "output merged header to stdout in SAM format, other options are ignored; mainly for debug purposes"
    show_progress: "show progress bar in STDERR"
    filter: "keep only reads that satisfy FILTER"
    samba_mba_merge: ""
    output_dot_bam: ""
    input_one_dot_bam: ""
    input_two_dot_bam: ""
  }
}