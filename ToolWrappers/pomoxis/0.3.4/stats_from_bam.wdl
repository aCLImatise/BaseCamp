version 1.0

task StatsFromBam {
  input {
    File? bed
    String? all_alignments
    File? output_alignment_stats
    File? summary
    Int? threads
  }
  command <<<
    stats_from_bam \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(all_alignments) then ("--all_alignments " +  '"' + all_alignments + '"') else ""} \
      ~{if defined(output_alignment_stats) then ("--output " +  '"' + output_alignment_stats + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: ".bed file of reference regions to include. (default:\\nNone)"
    all_alignments: "Include secondary and supplementary alignments.\\n(default: False)"
    output_alignment_stats: "Output alignment stats to file instead of stdout.\\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='ANSI_X3.4-1968'>)"
    summary: "Output summary to file instead of stderr. (default:\\n<_io.TextIOWrapper name='<stderr>' mode='w'\\nencoding='ANSI_X3.4-1968'>)"
    threads: "Number of threads for parallel processing. (default:\\n1)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_alignment_stats = "${in_output_alignment_stats}"
    File out_summary = "${in_summary}"
  }
}