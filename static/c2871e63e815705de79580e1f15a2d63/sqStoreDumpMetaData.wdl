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
      ~{true="-libs" false="" libs} \
      ~{true="-reads" false="" reads} \
      ~{true="-stats" false="" stats} \
      ~{true="-histogram" false="" histogram} \
      ~{true="-lengths" false="" lengths} \
      ~{if defined(output_readslibraies_end) then ("-r " +  '"' + output_readslibraies_end + '"') else ""} \
      ~{true="-raw" false="" raw} \
      ~{true="-corrected" false="" corrected} \
      ~{true="-trimmed" false="" trimmed} \
      ~{true="-compressed" false="" compressed}
  >>>
  parameter_meta {
    dump_reads_from: "dump reads from 'seqStore'"
    libs: "dump information about libraries"
    reads: "dump information about reads There are four pairs of flags, one for raw, raw-trimmed, corrected and corrected-trimmed.  Each pair tells if the sequence is valid and if it is ignored. 1st letter - valid (uppercase) or invalid (lowercase). 2nd letter - used  (uppercase) or ignored (lowercase). 1st pair   - raw sequence. 2nd pair   - raw sequence, trimmed. 3rd pair   - corrected sequence. 4th pair   - corrected sequence, trimmed. Example: RR--c--- - Raw version exists and is used.  Corrected version doesn't exist. RR--CCTt - Both raw and corrected versions exist and are used. Corrected trimmed version exists, but is ignored."
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
}