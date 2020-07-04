version 1.0

task StatsFromBam {
  input {
    Boolean? all_alignments
    String? output_alignment_stats
    String? summary
    String? threads
    String? bed
    Int? m
    String bam
  }
  command <<<
    stats_from_bam \
      ~{bam} \
      ~{true="--all_alignments" false="" all_alignments} \
      ~{if defined(output_alignment_stats) then ("--output " +  '"' + output_alignment_stats + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    all_alignments: "Include secondary and supplementary alignments. (default: False)"
    output_alignment_stats: "Output alignment stats to file instead of stdout. (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
    summary: "Output summary to file instead of stderr. (default: <_io.TextIOWrapper name='<stderr>' mode='w' encoding='UTF-8'>)"
    threads: "Number of threads for parallel processing. (default: 1)"
    bed: ""
    m: ""
    bam: "Path to bam file."
  }
}