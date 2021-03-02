version 1.0

task SambambaMerge {
  input {
    Int? n_threads
    Int? compression_level
    Boolean? header
    Boolean? show_progress
    String? filter
    String samba_mba_merge
    String output_dot_bam
    Int input_one_dot_bam
    Int input_two_dot_bam
  }
  command <<<
    sambamba merge \
      ~{samba_mba_merge} \
      ~{output_dot_bam} \
      ~{input_one_dot_bam} \
      ~{input_two_dot_bam} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    n_threads: "number of threads to use for compression/decompression"
    compression_level: "level of compression for merged BAM file, number from 0 to 9"
    header: "output merged header to stdout in SAM format, other options are ignored; mainly for debug purposes"
    show_progress: "show progress bar in STDERR"
    filter: "keep only reads that satisfy FILTER\\n"
    samba_mba_merge: ""
    output_dot_bam: ""
    input_one_dot_bam: ""
    input_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}