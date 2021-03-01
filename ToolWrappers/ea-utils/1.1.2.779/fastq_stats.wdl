version 1.0

task Fastqstats {
  input {
    Boolean? cyclemax_max_cycles
    Int? window_max_window
    Boolean? debug_prints_statements
    Boolean? do_duplicate_read
    Int? number_top_duplicate
    File? output_fastx_requires
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
      ~{if (do_duplicate_read) then "-D" else ""} \
      ~{if defined(number_top_duplicate) then ("-s " +  '"' + number_top_duplicate + '"') else ""} \
      ~{if defined(output_fastx_requires) then ("-x " +  '"' + output_fastx_requires + '"') else ""} \
      ~{if defined(output_base_breakdown) then ("-b " +  '"' + output_base_breakdown + '"') else ""} \
      ~{if defined(output_length_counts) then ("-L " +  '"' + output_length_counts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cyclemax_max_cycles: "cyclemax: max cycles for which following quality stats are produced [35]"
    window_max_window: "window: max window size for generating duplicate read statistics [2000000]"
    debug_prints_statements: "debug: prints out debug statements"
    do_duplicate_read: "don't do duplicate read statistics"
    number_top_duplicate: "number of top duplicate reads to display"
    output_fastx_requires: "output fastx statistics (requires an output filename)"
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
    File out_output_fastx_requires = "${in_output_fastx_requires}"
  }
}