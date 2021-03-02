version 1.0

task SqStoreDumpMetaData {
  input {
    String? dump_reads_from
    Boolean? libs
    Boolean? reads
    Boolean? stats
    Boolean? histogram
    Boolean? lengths
    String? output_readslibraies_end
    Boolean? raw
    Boolean? corrected
    Boolean? trimmed
    Boolean? compressed
    String? p
  }
  command <<<
    sqStoreDumpMetaData \
      ~{p} \
      ~{if defined(dump_reads_from) then ("-S " +  '"' + dump_reads_from + '"') else ""} \
      ~{if (libs) then "-libs" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (stats) then "-stats" else ""} \
      ~{if (histogram) then "-histogram" else ""} \
      ~{if (lengths) then "-lengths" else ""} \
      ~{if defined(output_readslibraies_end) then ("-r " +  '"' + output_readslibraies_end + '"') else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (corrected) then "-corrected" else ""} \
      ~{if (trimmed) then "-trimmed" else ""} \
      ~{if (compressed) then "-compressed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    dump_reads_from: "dump reads from 'seqStore'"
    libs: "dump information about libraries"
    reads: "dump information about reads\\nThere are four pairs of flags, one for raw, raw-trimmed,\\ncorrected and corrected-trimmed.  Each pair tells if\\nthe sequence is valid and if it is ignored.\\n1st letter - valid (uppercase) or invalid (lowercase).\\n2nd letter - used  (uppercase) or ignored (lowercase).\\n1st pair   - raw sequence.\\n2nd pair   - raw sequence, trimmed.\\n3rd pair   - corrected sequence.\\n4th pair   - corrected sequence, trimmed.\\nExample:\\nRR--c--- - Raw version exists and is used.  Corrected\\nversion doesn't exist.\\nRR--CCTt - Both raw and corrected versions exist and are used.\\nCorrected trimmed version exists, but is ignored."
    stats: "dump summary statistics on reads"
    histogram: "dump a length histogram"
    lengths: "dump just the (sorted) read lengths"
    output_readslibraies_end: "[-end]     output reads/libraies from `bgn` to `end`, inclusive"
    raw: "restrict to 'raw' reads"
    corrected: "restrict to 'corrected' reads"
    trimmed: "restrict to 'trimmed' reads"
    compressed: "restrict to 'compressed' reads"
    p: ""
  }
  output {
    File out_stdout = stdout()
  }
}