version 1.0

task TrimAdapters {
  input {
    Int? max_edit_distance
    Int? fudge
    Int? trim_from_start
    Int? rc_length
    Boolean? verbose
    String forward
    String reverse
  }
  command <<<
    trim_adapters \
      ~{forward} \
      ~{reverse} \
      ~{if defined(max_edit_distance) then ("--max-edit-distance " +  '"' + max_edit_distance + '"') else ""} \
      ~{if defined(fudge) then ("--fudge " +  '"' + fudge + '"') else ""} \
      ~{if defined(trim_from_start) then ("--trim-from-start " +  '"' + trim_from_start + '"') else ""} \
      ~{if defined(rc_length) then ("--rc-length " +  '"' + rc_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    max_edit_distance: "The maximum edit distance permitted when aligning the\\npaired reads (default: 1)."
    fudge: "An arbitrary number of extra bases to trim from the\\nends of reads (default: 1) because the original\\npyadapter_trim.py script did so."
    trim_from_start: "Trim this number of bases from the start of each\\nsequence (default: 0)."
    rc_length: "Use the reverse complement of this number of bases\\nfrom the beginning of the reverse read to align the\\nreads (default: 20)."
    verbose: "Report on the handling of each FASTQ record."
    forward: "The (optionally gzipped) FASTQ file containing the\\nforward reads."
    reverse: "The (optionally gzipped) FASTQ file containing the\\nreverse reads."
  }
  output {
    File out_stdout = stdout()
  }
}