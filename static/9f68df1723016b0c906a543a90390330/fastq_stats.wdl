version 1.0

task Fastqstats {
  input {
    Boolean? cyclemax_max_cycles
    Int? window_max_window
    Boolean? debug_prints_statements
    Boolean? duplicate_read_statistics
    Int? number_top_duplicate
    File? output_fastx_statistics
    Int? output_base_breakdown
    Int? output_length_counts
    String reads
    String len
    String phred
    Int window_size
    Int cycle_max
    String dups
    String qual
  }
  command <<<
    fastq_stats \
      ~{reads} \
      ~{len} \
      ~{phred} \
      ~{window_size} \
      ~{cycle_max} \
      ~{dups} \
      ~{qual} \
      ~{if (cyclemax_max_cycles) then "-c" else ""} \
      ~{if defined(window_max_window) then ("-w " +  '"' + window_max_window + '"') else ""} \
      ~{if (debug_prints_statements) then "-d" else ""} \
      ~{if (duplicate_read_statistics) then "-D" else ""} \
      ~{if defined(number_top_duplicate) then ("-s " +  '"' + number_top_duplicate + '"') else ""} \
      ~{if defined(output_fastx_statistics) then ("-x " +  '"' + output_fastx_statistics + '"') else ""} \
      ~{if defined(output_base_breakdown) then ("-b " +  '"' + output_base_breakdown + '"') else ""} \
      ~{if defined(output_length_counts) then ("-L " +  '"' + output_length_counts + '"') else ""}
  >>>
  parameter_meta {
    cyclemax_max_cycles: "cyclemax: max cycles for which following quality stats are produced [35]"
    window_max_window: "window: max window size for generating duplicate read statistics [2000000]"
    debug_prints_statements: "debug: prints out debug statements"
    duplicate_read_statistics: "don't do duplicate read statistics"
    number_top_duplicate: "number of top duplicate reads to display"
    output_fastx_statistics: "output fastx statistics (requires an output filename)"
    output_base_breakdown: "output base breakdown by per phred quality at every cycle.\\nIt sets cylemax to longest read length"
    output_length_counts: "Output length counts"
    reads: ": #reads in the fastq file"
    len: ": read length. mean and stdev are provided for variable read lengths"
    phred: ": phred scale used"
    window_size: ": Number of reads used to generate duplicate read statistics"
    cycle_max: ": Number of bases to assess for duplicity"
    dups: ": Number of reads that are duplicates"
    qual: ": Base Quality min, max and mean"
  }
  output {
    File out_stdout = stdout()
    File out_output_fastx_statistics = "${in_output_fastx_statistics}"
  }
}